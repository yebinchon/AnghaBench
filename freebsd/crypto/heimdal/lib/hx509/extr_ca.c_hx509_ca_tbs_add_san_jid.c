
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_ca_tbs ;


 int add_utf8_san (int ,int ,int *,char const*) ;
 int asn1_oid_id_pkix_on_xmppAddr ;

int
hx509_ca_tbs_add_san_jid(hx509_context context,
    hx509_ca_tbs tbs,
    const char *jid)
{
    return add_utf8_san(context, tbs, &asn1_oid_id_pkix_on_xmppAddr, jid);
}
