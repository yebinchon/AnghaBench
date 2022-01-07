
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH_DIGEST_SHA256 ;
 int SSH_DIGEST_SHA384 ;
 int SSH_DIGEST_SHA512 ;
 int sshkey_curve_nid_to_bits (int) ;

int
sshkey_ec_nid_to_hash_alg(int nid)
{
 int kbits = sshkey_curve_nid_to_bits(nid);

 if (kbits <= 0)
  return -1;


 if (kbits <= 256)
  return SSH_DIGEST_SHA256;
 else if (kbits <= 384)
  return SSH_DIGEST_SHA384;
 else
  return SSH_DIGEST_SHA512;
}
