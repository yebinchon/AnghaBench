
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* kex; } ;
struct TYPE_2__ {int (* verify_host_key ) (struct sshkey*,struct ssh*) ;} ;


 int SSH_ERR_INVALID_ARGUMENT ;

int
ssh_set_verify_host_key_callback(struct ssh *ssh,
    int (*cb)(struct sshkey *, struct ssh *))
{
 if (cb == ((void*)0) || ssh->kex == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;

 ssh->kex->verify_host_key = cb;

 return 0;
}
