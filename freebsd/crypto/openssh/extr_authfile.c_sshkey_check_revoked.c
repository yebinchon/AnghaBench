
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;



 int SSH_ERR_KEY_REVOKED ;
 int SSH_ERR_KRL_BAD_MAGIC ;
 int ssh_krl_file_contains_key (char const*,struct sshkey*) ;
 int sshkey_in_file (struct sshkey*,char const*,int ,int) ;

int
sshkey_check_revoked(struct sshkey *key, const char *revoked_keys_file)
{
 int r;

 r = ssh_krl_file_contains_key(revoked_keys_file, key);

 if (r != SSH_ERR_KRL_BAD_MAGIC)
  return r;





 switch ((r = sshkey_in_file(key, revoked_keys_file, 0, 1))) {
 case 0:

  return SSH_ERR_KEY_REVOKED;
 case 128:

  return 0;
 default:

  return r;
 }
}
