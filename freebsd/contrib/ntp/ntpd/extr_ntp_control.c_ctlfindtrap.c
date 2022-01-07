
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {int dummy; } ;
struct ctl_trap {int tr_flags; struct interface* tr_localaddr; int tr_addr; } ;
typedef int sockaddr_u ;


 scalar_t__ ADDR_PORT_EQ (int *,int *) ;
 size_t COUNTOF (struct ctl_trap*) ;
 int TRAP_INUSE ;
 struct ctl_trap* ctl_traps ;

__attribute__((used)) static struct ctl_trap *
ctlfindtrap(
 sockaddr_u *raddr,
 struct interface *linter
 )
{
 size_t n;

 for (n = 0; n < COUNTOF(ctl_traps); n++)
  if ((ctl_traps[n].tr_flags & TRAP_INUSE)
      && ADDR_PORT_EQ(raddr, &ctl_traps[n].tr_addr)
      && (linter == ctl_traps[n].tr_localaddr))
   return &ctl_traps[n];

 return ((void*)0);
}
