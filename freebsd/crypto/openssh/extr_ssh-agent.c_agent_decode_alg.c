
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshkey {scalar_t__ type; } ;


 scalar_t__ KEY_RSA ;
 int SSH_AGENT_RSA_SHA2_256 ;
 int SSH_AGENT_RSA_SHA2_512 ;

__attribute__((used)) static char *
agent_decode_alg(struct sshkey *key, u_int flags)
{
 if (key->type == KEY_RSA) {
  if (flags & SSH_AGENT_RSA_SHA2_256)
   return "rsa-sha2-256";
  else if (flags & SSH_AGENT_RSA_SHA2_512)
   return "rsa-sha2-512";
 }
 return ((void*)0);
}
