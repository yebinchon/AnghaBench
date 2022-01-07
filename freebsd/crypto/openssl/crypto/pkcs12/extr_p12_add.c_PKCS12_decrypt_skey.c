
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shkeybag; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ PKCS12_SAFEBAG ;


 int * PKCS8_decrypt (int ,char const*,int) ;

PKCS8_PRIV_KEY_INFO *PKCS12_decrypt_skey(const PKCS12_SAFEBAG *bag,
                                         const char *pass, int passlen)
{
    return PKCS8_decrypt(bag->value.shkeybag, pass, passlen);
}
