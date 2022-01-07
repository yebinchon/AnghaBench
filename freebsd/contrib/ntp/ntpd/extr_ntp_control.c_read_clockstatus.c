
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct refclockstat {struct ctl_var* kv_list; } ;
struct recvbuf {int dummy; } ;
struct peer {int flags; int srcadr; struct peer* p_link; } ;
struct ctl_var {int flags; size_t code; int text; } ;
struct TYPE_2__ {int status; } ;


 int CC_MAXCODE ;
 int CERR_BADASSOC ;
 int CERR_BADVALUE ;
 int CERR_UNKNOWNVAR ;
 int DEF ;
 int EOV ;
 int FALSE ;
 int FLAG_REFCLOCK ;
 int TRUE ;
 struct ctl_var* clock_var ;
 int count_var (struct ctl_var*) ;
 int ctl_error (int ) ;
 int ctl_flushpkt (int ) ;
 struct ctl_var* ctl_getitem (struct ctl_var*,char**) ;
 int ctl_putclock (int,struct refclockstat*,int) ;
 int ctl_putdata (int ,int ,int) ;
 int ctlclkstatus (struct refclockstat*) ;
 int* def_clock_var ;
 int* emalloc_zero (size_t) ;
 struct peer* findpeerbyassoc (scalar_t__) ;
 int free (int*) ;
 int free_varlist (struct ctl_var*) ;
 int htons (int ) ;
 struct peer* peer_list ;
 int refclock_control (int *,int *,struct refclockstat*) ;
 scalar_t__ res_associd ;
 TYPE_1__ rpkt ;
 int strlen (int ) ;
 struct peer* sys_peer ;

__attribute__((used)) static void
read_clockstatus(
 struct recvbuf *rbufp,
 int restrict_mask
 )
{




 ctl_error(CERR_BADASSOC);
}
