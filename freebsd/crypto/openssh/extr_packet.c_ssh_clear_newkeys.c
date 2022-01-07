
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* kex; } ;
struct TYPE_2__ {int ** newkeys; } ;


 int kex_free_newkeys (int *) ;

void
ssh_clear_newkeys(struct ssh *ssh, int mode)
{
 if (ssh->kex && ssh->kex->newkeys[mode]) {
  kex_free_newkeys(ssh->kex->newkeys[mode]);
  ssh->kex->newkeys[mode] = ((void*)0);
 }
}
