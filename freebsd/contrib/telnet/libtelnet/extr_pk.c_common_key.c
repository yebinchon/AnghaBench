
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;
typedef int IdeaData ;
typedef int DesData ;


 int DES_set_odd_parity (int *) ;
 char* HEXMODULUS ;
 int extractdeskey (int *,int *) ;
 int extractideakey (int *,int *) ;
 int * mp_itom (int ) ;
 int mp_mfree (int *) ;
 int mp_pow (int *,int *,int *,int *) ;
 int * mp_xtom (char*) ;

void
common_key(char *xsecret, char *xpublic, IdeaData *ideakey, DesData *deskey)
{
        MINT *public;
        MINT *secret;
        MINT *common;
 MINT *modulus = mp_xtom(HEXMODULUS);

        public = mp_xtom(xpublic);
        secret = mp_xtom(xsecret);
        common = mp_itom(0);
        mp_pow(public, secret, modulus, common);
        extractdeskey(common, deskey);
        extractideakey(common, ideakey);
 DES_set_odd_parity(deskey);
        mp_mfree(common);
        mp_mfree(secret);
        mp_mfree(public);
 mp_mfree(modulus);
}
