
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {int type; } ;
struct TYPE_2__ {int pubkey_key_types; } ;




 int match_pattern_list (char*,int ,int ) ;
 TYPE_1__ options ;
 char* sshkey_ssh_name (struct sshkey*) ;

__attribute__((used)) static int
key_type_allowed_by_config(struct sshkey *key)
{
 if (match_pattern_list(sshkey_ssh_name(key),
     options.pubkey_key_types, 0) == 1)
  return 1;


 switch (key->type) {
 case 129:
  if (match_pattern_list("rsa-sha2-512",
      options.pubkey_key_types, 0) == 1)
   return 1;
  if (match_pattern_list("rsa-sha2-256",
      options.pubkey_key_types, 0) == 1)
   return 1;
  break;
 case 128:
  if (match_pattern_list("rsa-sha2-512-cert-v01@openssh.com",
      options.pubkey_key_types, 0) == 1)
   return 1;
  if (match_pattern_list("rsa-sha2-256-cert-v01@openssh.com",
      options.pubkey_key_types, 0) == 1)
   return 1;
  break;
 }
 return 0;
}
