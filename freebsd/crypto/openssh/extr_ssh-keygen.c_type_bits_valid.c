
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int ;


 scalar_t__ DEFAULT_BITS ;
 scalar_t__ DEFAULT_BITS_DSA ;
 scalar_t__ DEFAULT_BITS_ECDSA ;



 int KEY_UNSPEC ;
 scalar_t__ OPENSSL_DSA_MAX_MODULUS_BITS ;
 scalar_t__ OPENSSL_RSA_MAX_MODULUS_BITS ;
 scalar_t__ SSH_RSA_MINIMUM_MODULUS_SIZE ;
 int fatal (char*,...) ;
 int key_type_name ;
 scalar_t__ sshkey_curve_nid_to_bits (scalar_t__) ;
 int sshkey_ecdsa_bits_to_nid (scalar_t__) ;
 scalar_t__ sshkey_ecdsa_nid_from_name (char const*) ;

__attribute__((used)) static void
type_bits_valid(int type, const char *name, u_int32_t *bitsp)
{




 if (type == KEY_UNSPEC)
  fatal("unknown key type %s", key_type_name);
 if (*bitsp == 0) {
   *bitsp = DEFAULT_BITS;
 }
}
