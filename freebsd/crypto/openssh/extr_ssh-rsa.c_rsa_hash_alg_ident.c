
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
rsa_hash_alg_ident(int hash_alg)
{
 switch (hash_alg) {
 case 130:
  return "ssh-rsa";
 case 129:
  return "rsa-sha2-256";
 case 128:
  return "rsa-sha2-512";
 }
 return ((void*)0);
}
