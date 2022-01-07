
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int len; int* oid; } ;



__attribute__((used)) static int is_oid_basic_ocsp_resp(struct asn1_oid *oid)
{
 return oid->len == 10 &&
  oid->oid[0] == 1 &&
  oid->oid[1] == 3 &&
  oid->oid[2] == 6 &&
  oid->oid[3] == 1 &&
  oid->oid[4] == 5 &&
  oid->oid[5] == 5 &&
  oid->oid[6] == 7 &&
  oid->oid[7] == 48 &&
  oid->oid[8] == 1 &&
  oid->oid[9] == 1 ;
}
