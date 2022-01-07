
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int * e; int * n; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,unsigned char*) ;
 int BN_num_bytes (int const*) ;
 int RSA_get0_key (TYPE_1__*,int const**,int const**,int *) ;
 int ldns_write_uint16 (unsigned char*,scalar_t__) ;

__attribute__((used)) static bool
ldns_key_rsa2bin(unsigned char *data, RSA *k, uint16_t *size)
{
 int i,j;
 const BIGNUM *n=((void*)0), *e=((void*)0);

 if (!k) {
  return 0;
 }

 n = k->n;
 e = k->e;




 if (BN_num_bytes(e) <= 256) {



  data[0] = (unsigned char) BN_num_bytes(e);
  i = BN_bn2bin(e, data + 1);
  j = BN_bn2bin(n, data + i + 1);
  *size = (uint16_t) i + j;
 } else if (BN_num_bytes(e) <= 65536) {
  data[0] = 0;

  ldns_write_uint16(data + 1, (uint16_t) BN_num_bytes(e));

  BN_bn2bin(e, data + 3);
  BN_bn2bin(n, data + 4 + BN_num_bytes(e));
  *size = (uint16_t) BN_num_bytes(n) + 6;
 } else {
  return 0;
 }
 return 1;
}
