
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH_DIGEST_SHA1 ;
 int SSH_DIGEST_SHA256 ;
 int SSH_DIGEST_SHA512 ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
rsa_hash_id_from_ident(const char *ident)
{
 if (strcmp(ident, "ssh-rsa") == 0)
  return SSH_DIGEST_SHA1;
 if (strcmp(ident, "rsa-sha2-256") == 0)
  return SSH_DIGEST_SHA256;
 if (strcmp(ident, "rsa-sha2-512") == 0)
  return SSH_DIGEST_SHA512;
 return -1;
}
