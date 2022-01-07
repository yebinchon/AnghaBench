
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {int dummy; } ;
struct ctl_trap {int tr_flags; } ;
typedef int sockaddr_u ;


 int TRAP_CONFIGURED ;
 int TRAP_TYPE_CONFIG ;
 struct ctl_trap* ctlfindtrap (int *,struct interface*) ;
 int num_ctl_traps ;

int
ctlclrtrap(
 sockaddr_u *raddr,
 struct interface *linter,
 int traptype
 )
{
 register struct ctl_trap *tp;

 if ((tp = ctlfindtrap(raddr, linter)) == ((void*)0))
  return (0);

 if (tp->tr_flags & TRAP_CONFIGURED
     && traptype != TRAP_TYPE_CONFIG)
  return (0);

 tp->tr_flags = 0;
 num_ctl_traps--;
 return (1);
}
