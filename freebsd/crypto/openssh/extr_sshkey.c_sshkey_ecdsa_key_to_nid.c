
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 scalar_t__ EC_GROUP_cmp (int const*,int *,int *) ;
 int EC_GROUP_free (int *) ;
 int EC_GROUP_get_curve_name (int const*) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int EC_GROUP_set_asn1_flag (int *,int ) ;
 int * EC_KEY_get0_group (int *) ;
 int EC_KEY_set_group (int *,int *) ;
 int NID_X9_62_prime256v1 ;
 int NID_secp384r1 ;
 int NID_secp521r1 ;
 int OPENSSL_EC_NAMED_CURVE ;

int
sshkey_ecdsa_key_to_nid(EC_KEY *k)
{
 EC_GROUP *eg;
 int nids[] = {
  NID_X9_62_prime256v1,
  NID_secp384r1,



  -1
 };
 int nid;
 u_int i;
 BN_CTX *bnctx;
 const EC_GROUP *g = EC_KEY_get0_group(k);
 if ((nid = EC_GROUP_get_curve_name(g)) > 0)
  return nid;
 if ((bnctx = BN_CTX_new()) == ((void*)0))
  return -1;
 for (i = 0; nids[i] != -1; i++) {
  if ((eg = EC_GROUP_new_by_curve_name(nids[i])) == ((void*)0)) {
   BN_CTX_free(bnctx);
   return -1;
  }
  if (EC_GROUP_cmp(g, eg, bnctx) == 0)
   break;
  EC_GROUP_free(eg);
 }
 BN_CTX_free(bnctx);
 if (nids[i] != -1) {

  EC_GROUP_set_asn1_flag(eg, OPENSSL_EC_NAMED_CURVE);
  if (EC_KEY_set_group(k, eg) != 1) {
   EC_GROUP_free(eg);
   return -1;
  }
 }
 return nids[i];
}
