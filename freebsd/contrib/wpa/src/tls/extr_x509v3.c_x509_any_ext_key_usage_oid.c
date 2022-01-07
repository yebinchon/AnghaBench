
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int len; int* oid; } ;


 scalar_t__ x509_id_ce_oid (struct asn1_oid*) ;

__attribute__((used)) static int x509_any_ext_key_usage_oid(struct asn1_oid *oid)
{
 return oid->len == 6 &&
  x509_id_ce_oid(oid) &&
  oid->oid[3] == 37 &&
  oid->oid[4] == 0 ;
}
