
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH_DIGEST_SHA1 ;
 int SSH_DIGEST_SHA256 ;
 int SSH_DIGEST_SHA512 ;
 int rsa_hash_id_from_ident (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
rsa_hash_id_from_keyname(const char *alg)
{
 int r;

 if ((r = rsa_hash_id_from_ident(alg)) != -1)
  return r;
 if (strcmp(alg, "ssh-rsa-cert-v01@openssh.com") == 0)
  return SSH_DIGEST_SHA1;
 if (strcmp(alg, "rsa-sha2-256-cert-v01@openssh.com") == 0)
  return SSH_DIGEST_SHA256;
 if (strcmp(alg, "rsa-sha2-512-cert-v01@openssh.com") == 0)
  return SSH_DIGEST_SHA512;
 return -1;
}
