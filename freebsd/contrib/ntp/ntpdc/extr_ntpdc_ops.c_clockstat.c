
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int32 ;
struct parse {TYPE_1__* argval; int nargs; } ;
struct info_clock {scalar_t__ type; int lastevent; int currentstatus; int flags; scalar_t__ fudgeval2; scalar_t__ fudgeval1; int fudgetime2; int fudgetime1; scalar_t__ timestarted; scalar_t__ baddata; scalar_t__ badformat; scalar_t__ noresponse; scalar_t__ polls; int clockadr; } ;
struct clktype {scalar_t__ code; char* clocktype; } ;
typedef int l_fp ;
struct TYPE_2__ {int netnum; } ;
typedef int FILE ;


 int COUNTOF (int *) ;
 scalar_t__ IMPL_XNTPD ;
 scalar_t__ IMPL_XNTPD_OLD ;
 int INFO_ERR_IMPL ;
 int MAXARGS ;
 int NSRCADR (int *) ;
 int NTOHL_FP (int *,int *) ;
 int REQ_GET_CLOCKINFO ;
 int checkitems (size_t,int *) ;
 int checkitemsize (size_t,int) ;
 struct clktype* clktypes ;
 int doquery (scalar_t__,int ,int ,size_t,int,char*,size_t*,size_t*,void*,int ,int) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ impl_ver ;
 char* lfptoa (int *,int) ;
 int min (int ,int) ;
 scalar_t__ ntohl (scalar_t__) ;
 char* numtoa (int ) ;
 char* refid_string (scalar_t__,int ) ;

__attribute__((used)) static void
clockstat(
 struct parse *pcmd,
 FILE *fp
 )
{
 struct info_clock *cl;

 u_long clist[min(MAXARGS, 8)];
 size_t qitemlim;
 size_t qitems;
 size_t items;
 size_t itemsize;
 int res;
 l_fp ts;
 struct clktype *clk;

 qitemlim = min(pcmd->nargs, COUNTOF(clist));
 for (qitems = 0; qitems < qitemlim; qitems++)
  clist[qitems] = NSRCADR(&pcmd->argval[qitems].netnum);

again:
 res = doquery(impl_ver, REQ_GET_CLOCKINFO, 0, qitems,
        sizeof(u_int32), (char *)clist, &items,
        &itemsize, (void *)&cl, 0, sizeof(struct info_clock));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res != 0)
  return;

 if (!checkitems(items, fp))
  return;

 if (!checkitemsize(itemsize, sizeof(struct info_clock)))
  return;

 while (items-- > 0) {
  (void) fprintf(fp, "clock address:        %s\n",
          numtoa(cl->clockadr));
  for (clk = clktypes; clk->code >= 0; clk++)
      if (clk->code == cl->type)
   break;
  if (clk->code >= 0)
      (void) fprintf(fp, "clock type:           %s\n",
       clk->clocktype);
  else
      (void) fprintf(fp, "clock type:           unknown type (%d)\n",
       cl->type);
  (void) fprintf(fp, "last event:           %d\n",
          cl->lastevent);
  (void) fprintf(fp, "current status:       %d\n",
          cl->currentstatus);
  (void) fprintf(fp, "number of polls:      %lu\n",
          (u_long)ntohl(cl->polls));
  (void) fprintf(fp, "no response to poll:  %lu\n",
          (u_long)ntohl(cl->noresponse));
  (void) fprintf(fp, "bad format responses: %lu\n",
          (u_long)ntohl(cl->badformat));
  (void) fprintf(fp, "bad data responses:   %lu\n",
          (u_long)ntohl(cl->baddata));
  (void) fprintf(fp, "running time:         %lu\n",
          (u_long)ntohl(cl->timestarted));
  NTOHL_FP(&cl->fudgetime1, &ts);
  (void) fprintf(fp, "fudge time 1:         %s\n",
          lfptoa(&ts, 6));
  NTOHL_FP(&cl->fudgetime2, &ts);
  (void) fprintf(fp, "fudge time 2:         %s\n",
          lfptoa(&ts, 6));
  (void) fprintf(fp, "stratum:              %ld\n",
          (u_long)ntohl(cl->fudgeval1));
  (void) fprintf(fp, "reference ID:         %s\n",
          refid_string(cl->fudgeval2, 0));

  (void) fprintf(fp, "fudge flags:          0x%x\n",
          cl->flags);

  if (items > 0)
      (void) fprintf(fp, "\n");
  cl++;
 }
}
