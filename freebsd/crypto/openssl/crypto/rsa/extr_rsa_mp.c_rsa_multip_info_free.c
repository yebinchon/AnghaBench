
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t; int d; int r; } ;
typedef TYPE_1__ RSA_PRIME_INFO ;


 int BN_clear_free (int ) ;
 int rsa_multip_info_free_ex (TYPE_1__*) ;

void rsa_multip_info_free(RSA_PRIME_INFO *pinfo)
{

    BN_clear_free(pinfo->r);
    BN_clear_free(pinfo->d);
    BN_clear_free(pinfo->t);
    rsa_multip_info_free_ex(pinfo);
}
