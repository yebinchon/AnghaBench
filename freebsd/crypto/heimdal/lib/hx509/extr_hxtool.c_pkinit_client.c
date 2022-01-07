
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cert_type_opt {int pkinit; } ;
typedef int hx509_context ;
typedef int hx509_ca_tbs ;


 int asn1_oid_id_ms_client_authentication ;
 int asn1_oid_id_pkekuoid ;
 int asn1_oid_id_pkinit_ms_eku ;
 int context ;
 int hx509_ca_tbs_add_eku (int ,int ,int *) ;

__attribute__((used)) static int
pkinit_client(hx509_context contextp, hx509_ca_tbs tbs, struct cert_type_opt *opt)
{
    int ret;

    opt->pkinit++;

    ret = hx509_ca_tbs_add_eku(contextp, tbs, &asn1_oid_id_pkekuoid);
    if (ret)
 return ret;

    ret = hx509_ca_tbs_add_eku(context, tbs, &asn1_oid_id_ms_client_authentication);
    if (ret)
 return ret;

    return hx509_ca_tbs_add_eku(context, tbs, &asn1_oid_id_pkinit_ms_eku);
}
