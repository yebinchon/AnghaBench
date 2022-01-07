
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshkey {scalar_t__ type; } ;


 scalar_t__ KEY_RSA ;
 int SSH_AGENT_RSA_SHA2_256 ;
 int SSH_AGENT_RSA_SHA2_512 ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static u_int
agent_encode_alg(const struct sshkey *key, const char *alg)
{
 if (alg != ((void*)0) && key->type == KEY_RSA) {
  if (strcmp(alg, "rsa-sha2-256") == 0)
   return SSH_AGENT_RSA_SHA2_256;
  else if (strcmp(alg, "rsa-sha2-512") == 0)
   return SSH_AGENT_RSA_SHA2_512;
 }
 return 0;
}
