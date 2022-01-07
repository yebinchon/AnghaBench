
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int len; int* oid; } ;



__attribute__((used)) static int x509_id_ce_oid(struct asn1_oid *oid)
{

 return oid->len >= 4 &&
  oid->oid[0] == 2 &&
  oid->oid[1] == 5 &&
  oid->oid[2] == 29 ;
}
