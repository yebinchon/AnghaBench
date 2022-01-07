
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ssh {int ** dispatch; } ;
typedef int dispatch_fn ;


 size_t DISPATCH_MAX ;

void
ssh_dispatch_init(struct ssh *ssh, dispatch_fn *dflt)
{
 u_int i;
 for (i = 0; i < DISPATCH_MAX; i++)
  ssh->dispatch[i] = dflt;
}
