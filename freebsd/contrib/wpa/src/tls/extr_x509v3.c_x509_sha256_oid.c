
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int* oid; } ;


 scalar_t__ x509_sha2_oid (struct asn1_oid*) ;

int x509_sha256_oid(struct asn1_oid *oid)
{
 return x509_sha2_oid(oid) &&
  oid->oid[8] == 1 ;
}
