
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct recvbuf {int dummy; } ;
struct peer {int dummy; } ;
struct TYPE_2__ {void* status; } ;


 int CERR_BADASSOC ;
 int ctl_error (int ) ;
 int ctl_flushpkt (int ) ;
 int ctlpeerstatus (struct peer*) ;
 int ctlsysstatus () ;
 struct peer* findpeerbyassoc (scalar_t__) ;
 void* htons (int ) ;
 scalar_t__ res_associd ;
 TYPE_1__ rpkt ;

__attribute__((used)) static void
control_unspec(
 struct recvbuf *rbufp,
 int restrict_mask
 )
{
 struct peer *peer;






 if (res_associd) {
  peer = findpeerbyassoc(res_associd);
  if (((void*)0) == peer) {
   ctl_error(CERR_BADASSOC);
   return;
  }
  rpkt.status = htons(ctlpeerstatus(peer));
 } else
  rpkt.status = htons(ctlsysstatus());
 ctl_flushpkt(0);
}
