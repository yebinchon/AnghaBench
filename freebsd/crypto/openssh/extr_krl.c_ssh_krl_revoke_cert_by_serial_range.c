
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct sshkey {int dummy; } ;
struct ssh_krl {int dummy; } ;
struct revoked_certs {int revoked_serials; } ;


 int SSH_ERR_INVALID_ARGUMENT ;
 int insert_serial_range (int *,int ,int ) ;
 int revoked_certs_for_ca_key (struct ssh_krl*,struct sshkey const*,struct revoked_certs**,int) ;

int
ssh_krl_revoke_cert_by_serial_range(struct ssh_krl *krl,
    const struct sshkey *ca_key, u_int64_t lo, u_int64_t hi)
{
 struct revoked_certs *rc;
 int r;

 if (lo > hi || lo == 0)
  return SSH_ERR_INVALID_ARGUMENT;
 if ((r = revoked_certs_for_ca_key(krl, ca_key, &rc, 1)) != 0)
  return r;
 return insert_serial_range(&rc->revoked_serials, lo, hi);
}
