
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int ** dispatch; } ;
typedef int dispatch_fn ;



void
ssh_dispatch_set(struct ssh *ssh, int type, dispatch_fn *fn)
{
 ssh->dispatch[type] = fn;
}
