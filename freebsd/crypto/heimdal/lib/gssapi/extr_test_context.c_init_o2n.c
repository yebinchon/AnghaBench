
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;


 int GSS_KRB5_MECHANISM ;
 int GSS_NTLM_MECHANISM ;
 int GSS_SASL_DIGEST_MD5_MECHANISM ;
 int GSS_SPNEGO_MECHANISM ;
 TYPE_1__* o2n ;

__attribute__((used)) static void
init_o2n(void)
{
    o2n[0].oid = GSS_KRB5_MECHANISM;
    o2n[1].oid = GSS_SPNEGO_MECHANISM;
    o2n[2].oid = GSS_NTLM_MECHANISM;
    o2n[3].oid = GSS_SASL_DIGEST_MD5_MECHANISM;
}
