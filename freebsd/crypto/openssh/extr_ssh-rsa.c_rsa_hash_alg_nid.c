
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NID_sha1 ;
 int NID_sha256 ;
 int NID_sha512 ;




__attribute__((used)) static int
rsa_hash_alg_nid(int type)
{
 switch (type) {
 case 130:
  return NID_sha1;
 case 129:
  return NID_sha256;
 case 128:
  return NID_sha512;
 default:
  return -1;
 }
}
