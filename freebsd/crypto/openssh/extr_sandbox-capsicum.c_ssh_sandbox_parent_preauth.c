
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_sandbox {int child_pid; } ;
typedef int pid_t ;



void
ssh_sandbox_parent_preauth(struct ssh_sandbox *box, pid_t child_pid)
{
 box->child_pid = child_pid;
}
