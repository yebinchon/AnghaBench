
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int buf ;
struct TYPE_2__ {int status; int assid; } ;
typedef int FILE ;


 int CTL_PEER_EVENT (int) ;
 int CTL_PEER_NEVNT (int) ;
 scalar_t__ CTL_PEER_STATVAL (int) ;
 int CTL_PST_AUTHENABLE ;
 int CTL_PST_AUTHENTIC ;
 int CTL_PST_BCAST ;
 int CTL_PST_CONFIG ;
 int CTL_PST_REACH ;
 scalar_t__ NTP_OLDVERSION ;
 int OLD_CTL_PST_DISP ;
 int OLD_CTL_PST_SANE ;




 int PEER_EVENT ;
 TYPE_1__* assoc_cache ;
 int fprintf (int *,char*,...) ;
 scalar_t__ numassoc ;
 scalar_t__ pktversion ;
 int snprintf (char*,int,char*,scalar_t__,int,int,char const*,char const*,char const*,char const*,char const*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
printassoc(
 int showall,
 FILE *fp
 )
{
 register char *bp;
 u_int i;
 u_char statval;
 int event;
 u_long event_count;
 const char *conf;
 const char *reach;
 const char *auth;
 const char *condition = "";
 const char *last_event;
 char buf[128];

 if (numassoc == 0) {
  (void) fprintf(fp, "No association ID's in list\n");
  return;
 }




 (void) fprintf(fp,
      "ind assid status  conf reach auth condition  last_event cnt\n");
 (void) fprintf(fp,
      "===========================================================\n");
 for (i = 0; i < numassoc; i++) {
  statval = (u_char) CTL_PEER_STATVAL(assoc_cache[i].status);
  if (!showall && !(statval & (CTL_PST_CONFIG|CTL_PST_REACH)))
   continue;
  event = CTL_PEER_EVENT(assoc_cache[i].status);
  event_count = CTL_PEER_NEVNT(assoc_cache[i].status);
  if (statval & CTL_PST_CONFIG)
   conf = "yes";
  else
   conf = "no";
  if (statval & CTL_PST_BCAST) {
   reach = "none";
   if (statval & CTL_PST_AUTHENABLE)
    auth = "yes";
   else
    auth = "none";
  } else {
   if (statval & CTL_PST_REACH)
    reach = "yes";
   else
    reach = "no";
   if (statval & CTL_PST_AUTHENABLE) {
    if (statval & CTL_PST_AUTHENTIC)
     auth = "ok ";
    else
     auth = "bad";
   } else {
    auth = "none";
   }
  }
  if (pktversion > NTP_OLDVERSION) {
   switch (statval & 0x7) {

   case 147:
    condition = "reject";
    break;

   case 146:
    condition = "falsetick";
    break;

   case 150:
    condition = "excess";
    break;

   case 145:
    condition = "outlier";
    break;

   case 144:
    condition = "candidate";
    break;

   case 149:
    condition = "backup";
    break;

   case 143:
    condition = "sys.peer";
    break;

   case 148:
    condition = "pps.peer";
    break;
   }
  } else {
   switch (statval & 0x3) {

   case 142:
    if (!(statval & OLD_CTL_PST_SANE))
     condition = "insane";
    else if (!(statval & OLD_CTL_PST_DISP))
     condition = "hi_disp";
    else
     condition = "";
    break;

   case 141:
    condition = "sel_cand";
    break;

   case 140:
    condition = "sync_cand";
    break;

   case 139:
    condition = "sys_peer";
    break;
   }
  }
  switch (PEER_EVENT|event) {

  case 134:
   last_event = "mobilize";
   break;

  case 136:
   last_event = "demobilize";
   break;

  case 131:
   last_event = "reachable";
   break;

  case 128:
   last_event = "unreachable";
   break;

  case 129:
   last_event = "restart";
   break;

  case 130:
   last_event = "no_reply";
   break;

  case 132:
   last_event = "rate_exceeded";
   break;

  case 135:
   last_event = "access_denied";
   break;

  case 138:
   last_event = "leap_armed";
   break;

  case 133:
   last_event = "sys_peer";
   break;

  case 137:
   last_event = "clock_alarm";
   break;

  default:
   last_event = "";
   break;
  }
  snprintf(buf, sizeof(buf),
    "%3d %5u  %04x   %3.3s  %4s  %4.4s %9.9s %11s %2lu",
    i + 1, assoc_cache[i].assid,
    assoc_cache[i].status, conf, reach, auth,
    condition, last_event, event_count);
  bp = buf + strlen(buf);
  while (bp > buf && ' ' == bp[-1])
   --bp;
  bp[0] = '\0';
  fprintf(fp, "%s\n", buf);
 }
}
