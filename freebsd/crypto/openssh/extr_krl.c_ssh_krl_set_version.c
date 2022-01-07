
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct ssh_krl {int krl_version; } ;



void
ssh_krl_set_version(struct ssh_krl *krl, u_int64_t version)
{
 krl->krl_version = version;
}
