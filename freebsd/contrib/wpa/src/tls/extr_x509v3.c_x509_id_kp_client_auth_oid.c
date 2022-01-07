
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int len; int* oid; } ;


 scalar_t__ x509_id_kp_oid (struct asn1_oid*) ;

__attribute__((used)) static int x509_id_kp_client_auth_oid(struct asn1_oid *oid)
{

 return oid->len == 9 &&
  x509_id_kp_oid(oid) &&
  oid->oid[8] == 2 ;
}
