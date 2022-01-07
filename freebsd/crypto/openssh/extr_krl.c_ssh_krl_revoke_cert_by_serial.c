
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct sshkey {int dummy; } ;
struct ssh_krl {int dummy; } ;


 int ssh_krl_revoke_cert_by_serial_range (struct ssh_krl*,struct sshkey const*,int ,int ) ;

int
ssh_krl_revoke_cert_by_serial(struct ssh_krl *krl, const struct sshkey *ca_key,
    u_int64_t serial)
{
 return ssh_krl_revoke_cert_by_serial_range(krl, ca_key, serial, serial);
}
