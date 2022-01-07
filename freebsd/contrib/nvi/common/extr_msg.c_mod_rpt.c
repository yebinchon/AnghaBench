
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ recno_t ;
typedef int action ;
struct TYPE_12__ {scalar_t__* rptlines; TYPE_1__* gp; int rptlchange; } ;
struct TYPE_11__ {int (* scr_msg ) (TYPE_2__*,int ,char*,size_t) ;} ;
typedef TYPE_2__ SCR ;


 int ARSIZE (char* const*) ;
 int FREE_SPACE (TYPE_2__*,char*,size_t) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int GET_SPACE_GOTOC (TYPE_2__*,char*,size_t,int) ;
 size_t L_YANKED ;
 int MAXNUM ;
 int M_INFO ;
 int OOBLNO ;
 int O_REPORT ;
 scalar_t__ O_VAL (TYPE_2__*,int ) ;
 int SC_EX_SILENT ;
 int ex_fflush (TYPE_2__*) ;
 int memcpy (char*,char const*,size_t) ;
 char* msg_cat (TYPE_2__*,char* const,size_t*) ;
 size_t snprintf (char*,int,char*,scalar_t__) ;
 int stub1 (TYPE_2__*,int ,char*,size_t) ;

void
mod_rpt(SCR *sp)
{
 static char * const action[] = {
  "293|added",
  "294|changed",
  "295|deleted",
  "296|joined",
  "297|moved",
  "298|shifted",
  "299|yanked",
 };
 static char * const lines[] = {
  "300|line",
  "301|lines",
 };
 recno_t total;
 u_long rptval;
 int first, cnt;
 size_t blen, len, tlen;
 const char *t;
 char * const *ap;
 char *bp, *p;


 if (F_ISSET(sp, SC_EX_SILENT))
  return;


 sp->rptlchange = OOBLNO;
 rptval = O_VAL(sp, O_REPORT);
 for (cnt = 0, total = 0; cnt < sizeof(action) / sizeof (*action); ++cnt)
  total += sp->rptlines[cnt];
 if (total == 0)
  return;
 if (total <= rptval && sp->rptlines[L_YANKED] < rptval) {
  for (cnt = 0; cnt < sizeof(action) / sizeof (*action); ++cnt)
   sp->rptlines[cnt] = 0;
  return;
 }


 GET_SPACE_GOTOC(sp, bp, blen, sizeof(action) * 25 + 1);
 for (p = bp, first = 1, tlen = 0,
     ap = action, cnt = 0; cnt < sizeof(action) / sizeof (*action); ++ap, ++cnt)
  if (sp->rptlines[cnt] != 0) {
   if (first)
    first = 0;
   else {
    *p++ = ';';
    *p++ = ' ';
    tlen += 2;
   }
   len = snprintf(p, 25, "%lu ",
       (u_long)sp->rptlines[cnt]);
   p += len;
   tlen += len;
   t = msg_cat(sp,
       lines[sp->rptlines[cnt] == 1 ? 0 : 1], &len);
   memcpy(p, t, len);
   p += len;
   tlen += len;
   *p++ = ' ';
   ++tlen;
   t = msg_cat(sp, *ap, &len);
   memcpy(p, t, len);
   p += len;
   tlen += len;
   sp->rptlines[cnt] = 0;
  }


 *p = '\n';
 ++tlen;

 (void)ex_fflush(sp);
 sp->gp->scr_msg(sp, M_INFO, bp, tlen);

 FREE_SPACE(sp, bp, blen);
alloc_err:
 return;



}
