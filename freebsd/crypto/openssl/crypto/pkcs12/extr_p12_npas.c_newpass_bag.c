
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_SIG ;
typedef int X509_ALGOR ;
struct TYPE_5__ {int * shkeybag; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ PKCS12_SAFEBAG ;


 scalar_t__ NID_pkcs8ShroudedKeyBag ;
 scalar_t__ PKCS12_SAFEBAG_get_nid (TYPE_2__*) ;
 int PKCS8_PRIV_KEY_INFO_free (int *) ;
 int * PKCS8_decrypt (int *,char const*,int) ;
 int * PKCS8_encrypt (int,int *,char const*,int,int *,int,int,int *) ;
 int X509_SIG_free (int *) ;
 int X509_SIG_get0 (int *,int const**,int *) ;
 int alg_get (int const*,int*,int*,int*) ;

__attribute__((used)) static int newpass_bag(PKCS12_SAFEBAG *bag, const char *oldpass,
                       const char *newpass)
{
    PKCS8_PRIV_KEY_INFO *p8;
    X509_SIG *p8new;
    int p8_nid, p8_saltlen, p8_iter;
    const X509_ALGOR *shalg;

    if (PKCS12_SAFEBAG_get_nid(bag) != NID_pkcs8ShroudedKeyBag)
        return 1;

    if ((p8 = PKCS8_decrypt(bag->value.shkeybag, oldpass, -1)) == ((void*)0))
        return 0;
    X509_SIG_get0(bag->value.shkeybag, &shalg, ((void*)0));
    if (!alg_get(shalg, &p8_nid, &p8_iter, &p8_saltlen))
        return 0;
    p8new = PKCS8_encrypt(p8_nid, ((void*)0), newpass, -1, ((void*)0), p8_saltlen,
                          p8_iter, p8);
    PKCS8_PRIV_KEY_INFO_free(p8);
    if (p8new == ((void*)0))
        return 0;
    X509_SIG_free(bag->value.shkeybag);
    bag->value.shkeybag = p8new;
    return 1;
}
