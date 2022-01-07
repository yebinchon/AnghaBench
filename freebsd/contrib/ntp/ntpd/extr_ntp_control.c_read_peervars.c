
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct peer {scalar_t__ num_events; } ;
struct ctl_var {int flags; size_t code; } ;
struct TYPE_2__ {int status; } ;


 int CERR_BADASSOC ;
 int CERR_UNKNOWNVAR ;
 size_t COUNTOF (int*) ;
 int CP_MAXCODE ;
 int EOV ;
 int INSIST (int) ;
 int ZERO (int*) ;
 int ctl_error (int ) ;
 int ctl_flushpkt (int ) ;
 struct ctl_var* ctl_getitem (int ,char**) ;
 int ctl_putpeer (int,struct peer*) ;
 int ctlpeerstatus (struct peer*) ;
 int* def_peer_var ;
 struct peer* findpeerbyassoc (int ) ;
 int htons (int ) ;
 int peer_var ;
 int res_associd ;
 scalar_t__ res_authokay ;
 TYPE_1__ rpkt ;

__attribute__((used)) static void
read_peervars(void)
{
 const struct ctl_var *v;
 struct peer *peer;
 const u_char *cp;
 size_t i;
 char * valuep;
 u_char wants[CP_MAXCODE + 1];
 u_int gotvar;





 peer = findpeerbyassoc(res_associd);
 if (((void*)0) == peer) {
  ctl_error(CERR_BADASSOC);
  return;
 }
 rpkt.status = htons(ctlpeerstatus(peer));
 if (res_authokay)
  peer->num_events = 0;
 ZERO(wants);
 gotvar = 0;
 while (((void*)0) != (v = ctl_getitem(peer_var, &valuep))) {
  if (v->flags & EOV) {
   ctl_error(CERR_UNKNOWNVAR);
   return;
  }
  INSIST(v->code < COUNTOF(wants));
  wants[v->code] = 1;
  gotvar = 1;
 }
 if (gotvar) {
  for (i = 1; i < COUNTOF(wants); i++)
   if (wants[i])
    ctl_putpeer(i, peer);
 } else
  for (cp = def_peer_var; *cp != 0; cp++)
   ctl_putpeer((int)*cp, peer);
 ctl_flushpkt(0);
}
