
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int len; int* oid; } ;


 scalar_t__ oid_is_rsadsi (struct asn1_oid*) ;

__attribute__((used)) static int pkcs5_is_oid(struct asn1_oid *oid, unsigned long alg)
{
 return oid->len == 7 &&
  oid_is_rsadsi(oid) &&
  oid->oid[4] == 1 &&
  oid->oid[5] == 5 &&
  oid->oid[6] == alg;
}
