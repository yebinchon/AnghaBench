
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ssh {int ** dispatch; } ;
typedef int dispatch_fn ;


 size_t DISPATCH_MAX ;

void
ssh_dispatch_range(struct ssh *ssh, u_int from, u_int to, dispatch_fn *fn)
{
 u_int i;

 for (i = from; i <= to; i++) {
  if (i >= DISPATCH_MAX)
   break;
  ssh->dispatch[i] = fn;
 }
}
