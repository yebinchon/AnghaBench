
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_ca_tbs ;


 int add_utf8_san (int ,int ,int *,char const*) ;
 int asn1_oid_id_pkinit_ms_san ;

int
hx509_ca_tbs_add_san_ms_upn(hx509_context context,
       hx509_ca_tbs tbs,
       const char *principal)
{
    return add_utf8_san(context, tbs, &asn1_oid_id_pkinit_ms_san, principal);
}
