
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;
typedef int IdeaData ;


 int KEYSIZE ;
 int * mp_itom (int ) ;
 int mp_madd (int *,int *,int *) ;
 int mp_mfree (int *) ;
 int mp_sdiv (int *,short,int *,short*) ;

__attribute__((used)) static void
extractideakey(MINT *ck, IdeaData *ideakey)
{
        MINT *a;
        MINT *z;
        short r;
        int i;
        short base = (1 << 8);
        char *k;

        z = mp_itom(0);
        a = mp_itom(0);
        mp_madd(ck, z, a);
        for (i = 0; i < ((KEYSIZE - 128) / 8); i++) {
                mp_sdiv(a, base, a, &r);
        }
        k = (char *)ideakey;
        for (i = 0; i < 16; i++) {
                mp_sdiv(a, base, a, &r);
                *k++ = r;
        }
 mp_mfree(z);
        mp_mfree(a);
}
