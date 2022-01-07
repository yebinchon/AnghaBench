
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NID_X9_62_prime256v1 ;
 int NID_secp384r1 ;
 int NID_secp521r1 ;

int
sshkey_ecdsa_bits_to_nid(int bits)
{
 switch (bits) {
 case 256:
  return NID_X9_62_prime256v1;
 case 384:
  return NID_secp384r1;




 default:
  return -1;
 }
}
