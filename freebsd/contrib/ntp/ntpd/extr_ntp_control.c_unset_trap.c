
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recvbuf {int dstadr; int recv_srcadr; } ;


 int CERR_BADASSOC ;
 int RES_LPTRAP ;
 int TRAP_TYPE_NONPRIO ;
 int TRAP_TYPE_PRIO ;
 int ctl_error (int ) ;
 int ctl_flushpkt (int ) ;
 int ctlclrtrap (int *,int ,int) ;

__attribute__((used)) static void
unset_trap(
 struct recvbuf *rbufp,
 int restrict_mask
 )
{
 int traptype;







 traptype = TRAP_TYPE_PRIO;
 if (restrict_mask & RES_LPTRAP)
  traptype = TRAP_TYPE_NONPRIO;




 if (!ctlclrtrap(&rbufp->recv_srcadr, rbufp->dstadr, traptype))
  ctl_error(CERR_BADASSOC);
 ctl_flushpkt(0);
}
