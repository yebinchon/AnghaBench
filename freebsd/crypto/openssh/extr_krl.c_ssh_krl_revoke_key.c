
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {TYPE_1__* cert; } ;
struct ssh_krl {int dummy; } ;
struct TYPE_2__ {scalar_t__ serial; int signature_key; int key_id; } ;


 int ssh_krl_revoke_cert_by_key_id (struct ssh_krl*,int ,int ) ;
 int ssh_krl_revoke_cert_by_serial (struct ssh_krl*,int ,scalar_t__) ;
 int ssh_krl_revoke_key_sha1 (struct ssh_krl*,struct sshkey const*) ;
 int sshkey_is_cert (struct sshkey const*) ;

int
ssh_krl_revoke_key(struct ssh_krl *krl, const struct sshkey *key)
{
 if (!sshkey_is_cert(key))
  return ssh_krl_revoke_key_sha1(krl, key);

 if (key->cert->serial == 0) {
  return ssh_krl_revoke_cert_by_key_id(krl,
      key->cert->signature_key,
      key->cert->key_id);
 } else {
  return ssh_krl_revoke_cert_by_serial(krl,
      key->cert->signature_key,
      key->cert->serial);
 }
}
