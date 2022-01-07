
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tms_cstime; scalar_t__ tms_cutime; int tms_stime; int tms_utime; } ;
struct process {scalar_t__ p_procid; scalar_t__ p_jobid; int p_flags; int p_reason; int p_index; struct process* p_friends; TYPE_1__* p_cwd; int **** p_btime; int **** p_etime; int p_stime; int p_utime; TYPE_2__ p_rusage; int p_command; } ;
struct TYPE_9__ {int di_name; } ;
struct TYPE_8__ {int pname; } ;
struct TYPE_6__ {int di_name; } ;


 int AMPERSAND ;
 int AREASON ;
 int CGETS (int,int,char*) ;
 int FANCY ;
 int JOBDIR ;
 int JOBLIST ;
 int NAME ;
 int NUMBER ;

 int PALLSTATES ;
 int PDIAG ;
 int PDUMPED ;


 int PPOU ;
 int PPTIME ;



 int PTIME ;
 int REASON ;
 int SHELLDIR ;
 int SIGINT ;
 int SIGPIPE ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 TYPE_5__* dcwd ;
 int dtildepr (int ) ;
 int eq (int ,int ) ;
 int haderr ;
 scalar_t__ linbuf ;
 scalar_t__ linp ;
 TYPE_2__ lru ;
 TYPE_3__* mesg ;
 struct process* pcurrent ;
 struct process* pprevious ;
 int prusage (int *,TYPE_2__*,int ***,int ***) ;
 int ptprint (struct process*) ;
 int sitename (scalar_t__) ;
 char* xasprintf (char*,int ,int) ;
 int xfree ;
 int xprintf (char const*,...) ;
 int xputchar (char) ;
 int zru ;

__attribute__((used)) static int
pprint(struct process *pp, int flag)
{
    int status, reason;
    struct process *tp;
    int jobflags, pstatus, pcond;
    const char *format;
    int ohaderr;






    while (pp->p_procid != pp->p_jobid)
 pp = pp->p_friends;
    if (pp == pp->p_friends && (pp->p_flags & PPTIME)) {
 pp->p_flags &= ~PPTIME;
 pp->p_flags |= PTIME;
    }
    tp = pp;
    status = reason = -1;
    jobflags = 0;
    ohaderr = haderr;

    haderr = !(flag & JOBLIST);
    do {
 pcond = (tp != pp);


 jobflags |= pp->p_flags;
 pstatus = (int) (pp->p_flags & PALLSTATES);
 if (pcond && linp != linbuf && !(flag & FANCY) &&
     ((pstatus == status && pp->p_reason == reason) ||
      !(flag & REASON)))
     xputchar(' ');
 else {
     if (pcond && linp != linbuf)
  xputchar('\n');
     if (flag & NUMBER) {




  pcond = (pp == tp);

  if (pcond)
      xprintf("[%d]%s %c ", pp->p_index,
       pp->p_index < 10 ? " " : "",
       pp == pcurrent ? '+' :
       (pp == pprevious ? '-' : ' '));
  else
      xprintf("       ");
     }
     if (flag & FANCY) {
  xprintf("%5d ", pp->p_procid);



     }
     if (flag & (REASON | AREASON)) {
  if (flag & NAME)
      format = "%-30s";
  else
      format = "%s";
  if (pstatus == status) {
      if (pp->p_reason == reason) {
   xprintf(format, "");
   goto prcomd;
      }
      else
   reason = (int) pp->p_reason;
  }
  else {
      status = pstatus;
      reason = (int) pp->p_reason;
  }
  switch (status) {

  case 130:
      xprintf(format, CGETS(17, 4, "Running "));
      break;

  case 132:
  case 128:
  case 129:





      if ((flag & REASON)
   || ((flag & AREASON)
       && reason != SIGINT
       && (reason != SIGPIPE
    || (pp->p_flags & PPOU) == 0))) {
   char *ptr;
   int free_ptr;

   free_ptr = 0;
   ptr = (char *)(intptr_t)mesg[pp->p_reason & 0177].pname;
   if (ptr == ((void*)0)) {
       ptr = xasprintf("%s %d", CGETS(17, 5, "Signal"),
         pp->p_reason & 0177);
       cleanup_push(ptr, xfree);
       free_ptr = 1;
   }
   xprintf(format, ptr);
   if (free_ptr != 0)
       cleanup_until(ptr);
      }
      else
   reason = -1;
      break;

  case 131:
  case 133:
      if (flag & REASON) {
   if (pp->p_reason)
       xprintf(CGETS(17, 6, "Exit %-25d"), pp->p_reason);
   else
       xprintf(format, CGETS(17, 7, "Done"));
      }
      break;

  default:
      xprintf(CGETS(17, 8, "BUG: status=%-9o"),
       status);
  }
     }
 }
prcomd:
 if (flag & NAME) {
     xprintf("%S", pp->p_command);
     if (pp->p_flags & PPOU)
  xprintf(" |");
     if (pp->p_flags & PDIAG)
  xprintf("&");
 }
 if (flag & (REASON | AREASON) && pp->p_flags & PDUMPED)
     xprintf("%s", CGETS(17, 9, " (core dumped)"));
 if (tp == pp->p_friends) {
     if (flag & AMPERSAND)
  xprintf(" &");
     if (flag & JOBDIR &&
  !eq(tp->p_cwd->di_name, dcwd->di_name)) {
  xprintf("%s", CGETS(17, 10, " (wd: "));
  dtildepr(tp->p_cwd->di_name);
  xprintf(")");
     }
 }
 if (pp->p_flags & PPTIME && !(status & (128 | 130))) {
     if (linp != linbuf)
  xprintf("\n\t");




     lru.tms_utime = pp->p_utime;
     lru.tms_stime = pp->p_stime;
     lru.tms_cutime = 0;
     lru.tms_cstime = 0;
     prusage(&zru, &lru, pp->p_etime,
      pp->p_btime);


 }




 pcond = (tp == pp->p_friends);

 if (pcond) {
     if (linp != linbuf)
  xputchar('\n');
     if (flag & SHELLDIR && !eq(tp->p_cwd->di_name, dcwd->di_name)) {
  xprintf("%s", CGETS(17, 11, "(wd now: "));
  dtildepr(dcwd->di_name);
  xprintf(")\n");
     }
 }
 pcond = ((pp = pp->p_friends) != tp);

    } while (pcond);

    if (jobflags & PTIME && (jobflags & (128 | 130)) == 0) {
 if (jobflags & NUMBER)
     xprintf("       ");
 ptprint(tp);
    }
    haderr = ohaderr;
    return (jobflags);
}
