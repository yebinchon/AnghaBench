
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recvbuf {int dstadr; int recv_srcadr; } ;


 int CERR_NORESOURCE ;
 int CERR_PERMISSION ;
 int RES_LPTRAP ;
 int RES_NOTRAP ;
 int TRAP_TYPE_NONPRIO ;
 int TRAP_TYPE_PRIO ;
 int ctl_error (int ) ;
 int ctl_flushpkt (int ) ;
 int ctlsettrap (int *,int ,int,int) ;
 scalar_t__ res_version ;

__attribute__((used)) static void
set_trap(
 struct recvbuf *rbufp,
 int restrict_mask
 )
{
 int traptype;




 if (restrict_mask & RES_NOTRAP) {
  ctl_error(CERR_PERMISSION);
  return;
 }




 traptype = TRAP_TYPE_PRIO;
 if (restrict_mask & RES_LPTRAP)
  traptype = TRAP_TYPE_NONPRIO;





 if (!ctlsettrap(&rbufp->recv_srcadr, rbufp->dstadr, traptype,
   (int)res_version))
  ctl_error(CERR_NORESOURCE);
 ctl_flushpkt(0);
}
