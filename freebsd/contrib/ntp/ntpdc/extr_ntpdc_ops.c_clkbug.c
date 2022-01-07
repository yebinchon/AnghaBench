
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int32 ;
struct parse {TYPE_1__* argval; int nargs; } ;
struct info_clkbug {int * times; int stimes; scalar_t__ ntimes; int * values; int svalues; scalar_t__ nvalues; int clockadr; } ;
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
 int NUMCBUGTIMES ;
 int NUMCBUGVALUES ;
 int REQ_GET_CLKBUGINFO ;
 int checkitems (size_t,int *) ;
 int checkitemsize (size_t,int) ;
 int doquery (scalar_t__,int ,int ,size_t,int,char*,size_t*,size_t*,void*,int ,int) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ impl_ver ;
 char* lfptoa (int *,int) ;
 int min (int ,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 char* numtoa (int ) ;
 int putc (char,int *) ;
 char* uglydate (int *) ;

__attribute__((used)) static void
clkbug(
 struct parse *pcmd,
 FILE *fp
 )
{
 register int i;
 register int n;
 register u_int32 s;
 struct info_clkbug *cl;

 u_long clist[min(MAXARGS, 8)];
 u_int32 ltemp;
 size_t qitemlim;
 size_t qitems;
 size_t items;
 size_t itemsize;
 int res;
 int needsp;
 l_fp ts;

 qitemlim = min(pcmd->nargs, COUNTOF(clist));
 for (qitems = 0; qitems < qitemlim; qitems++)
  clist[qitems] = NSRCADR(&pcmd->argval[qitems].netnum);

again:
 res = doquery(impl_ver, REQ_GET_CLKBUGINFO, 0, qitems,
        sizeof(u_int32), (char *)clist, &items,
        &itemsize, (void *)&cl, 0, sizeof(struct info_clkbug));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res != 0)
  return;

 if (!checkitems(items, fp))
  return;

 if (!checkitemsize(itemsize, sizeof(struct info_clkbug)))
  return;

 while (items-- > 0) {
  (void) fprintf(fp, "clock address:        %s\n",
          numtoa(cl->clockadr));
  n = (int)cl->nvalues;
  (void) fprintf(fp, "values: %d", n);
  s = ntohs(cl->svalues);
  if (n > NUMCBUGVALUES)
      n = NUMCBUGVALUES;
  for (i = 0; i < n; i++) {
   ltemp = ntohl(cl->values[i]);
   ltemp &= 0xffffffff;
   if ((i & 0x3) == 0)
       (void) fprintf(fp, "\n");
   if (s & (1 << i))
       (void) fprintf(fp, "%12ld", (u_long)ltemp);
   else
       (void) fprintf(fp, "%12lu", (u_long)ltemp);
  }
  (void) fprintf(fp, "\n");

  n = (int)cl->ntimes;
  (void) fprintf(fp, "times: %d", n);
  s = ntohl(cl->stimes);
  if (n > NUMCBUGTIMES)
      n = NUMCBUGTIMES;
  needsp = 0;
  for (i = 0; i < n; i++) {
   if ((i & 0x1) == 0) {
       (void) fprintf(fp, "\n");
   } else {
    for (;needsp > 0; needsp--)
        putc(' ', fp);
   }
   NTOHL_FP(&cl->times[i], &ts);
   if (s & (1 << i)) {
    (void) fprintf(fp, "%17s",
            lfptoa(&ts, 6));
    needsp = 22;
   } else {
    (void) fprintf(fp, "%37s",
            uglydate(&ts));
    needsp = 2;
   }
  }
  (void) fprintf(fp, "\n");
  if (items > 0) {
   cl++;
   (void) fprintf(fp, "\n");
  }
 }
}
