
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_short ;
typedef scalar_t__ u_char ;
struct recvbuf {int dummy; } ;
struct peer {int associd; struct peer* p_link; scalar_t__ num_events; } ;
typedef int a_st ;
struct TYPE_2__ {void* status; } ;


 int CERR_BADASSOC ;
 size_t COUNTOF (void**) ;
 int CTL_MAX_DATA_LEN ;
 int ctl_error (int ) ;
 int ctl_flushpkt (int ) ;
 int ctl_putdata (void*,size_t,int) ;
 int ctl_putpeer (int,struct peer*) ;
 int ctlpeerstatus (struct peer*) ;
 int ctlsysstatus () ;
 int debug ;
 scalar_t__* def_peer_var ;
 struct peer* findpeerbyassoc (int) ;
 void* htons (int ) ;
 struct peer* peer_list ;
 int printf (char*,int) ;
 int res_associd ;
 scalar_t__ res_authokay ;
 TYPE_1__ rpkt ;

__attribute__((used)) static void
read_status(
 struct recvbuf *rbufp,
 int restrict_mask
 )
{
 struct peer *peer;
 const u_char *cp;
 size_t n;

 u_short a_st[CTL_MAX_DATA_LEN / sizeof(u_short)];
 if (res_associd) {
  peer = findpeerbyassoc(res_associd);
  if (((void*)0) == peer) {
   ctl_error(CERR_BADASSOC);
   return;
  }
  rpkt.status = htons(ctlpeerstatus(peer));
  if (res_authokay)
   peer->num_events = 0;




  for (cp = def_peer_var; *cp != 0; cp++)
   ctl_putpeer((int)*cp, peer);
  ctl_flushpkt(0);
  return;
 }
 n = 0;
 rpkt.status = htons(ctlsysstatus());
 for (peer = peer_list; peer != ((void*)0); peer = peer->p_link) {
  a_st[n++] = htons(peer->associd);
  a_st[n++] = htons(ctlpeerstatus(peer));

  if (n + 1 >= COUNTOF(a_st)) {
   ctl_putdata((void *)a_st, n * sizeof(a_st[0]),
        1);
   n = 0;
  }
 }
 if (n)
  ctl_putdata((void *)a_st, n * sizeof(a_st[0]), 1);
 ctl_flushpkt(0);
}
