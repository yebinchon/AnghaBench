
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshkey {int type; int ecdsa_nid; int * dsa; int * rsa; } ;
typedef int BIGNUM ;


 int BN_num_bits (int const*) ;
 int DSA_get0_pqg (int *,int const**,int *,int *) ;
 int RSA_get0_key (int *,int const**,int *,int *) ;
 int sshkey_curve_nid_to_bits (int ) ;

u_int
sshkey_size(const struct sshkey *k)
{




 switch (k->type) {
 case 133:
 case 132:
 case 129:
 case 128:
  return 256;
 }
 return 0;
}
