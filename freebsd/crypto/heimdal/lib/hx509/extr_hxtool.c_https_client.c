
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cert_type_opt {int dummy; } ;
typedef int hx509_context ;
typedef int hx509_ca_tbs ;


 int asn1_oid_id_pkix_kp_clientAuth ;
 int hx509_ca_tbs_add_eku (int ,int ,int *) ;

__attribute__((used)) static int
https_client(hx509_context contextp, hx509_ca_tbs tbs, struct cert_type_opt *opt)
{
    return hx509_ca_tbs_add_eku(contextp, tbs, &asn1_oid_id_pkix_kp_clientAuth);
}
