
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_25__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_33__ {struct TYPE_33__* buf; int len; int mtype; } ;
struct TYPE_31__ {int if_lno; char* if_name; int clen; int cp; } ;
struct TYPE_32__ {TYPE_25__ excmd; int tiq; int lno; int msgq; int (* scr_msg ) (TYPE_2__*,int ,TYPE_3__*,int ) ;struct TYPE_32__* gp; } ;
struct TYPE_30__ {int len; int lb; } ;
typedef TYPE_1__ TEXT ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ MSGS ;
typedef TYPE_2__ GS ;
typedef int EX_PRIVATE ;


 int CLEAR_EX_PARSER (TYPE_25__*) ;
 int CLR_INTERRUPT (TYPE_2__*) ;
 int * EXP (TYPE_2__*) ;
 int E_NRSEP ;
 int F_CLR (TYPE_2__*,int) ;
 int F_INIT (TYPE_25__*,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int) ;
 int G_SCRIPTED ;
 int G_SRESTART ;
 scalar_t__ INTERRUPTED (TYPE_2__*) ;
 int L (char*) ;
 int LF_INIT (int) ;
 int LF_SET (int ) ;
 int M_ERR ;
 int O_BEAUTIFY ;
 scalar_t__ O_ISSET (TYPE_2__*,int ) ;
 int O_PROMPT ;
 int SC_EXIT ;
 int SC_EXIT_FORCE ;
 int SC_EX_SILENT ;
 int SC_FSWITCH ;
 int SC_SSWITCH ;
 int SC_STATUS ;
 int SC_VI ;
 TYPE_3__* SLIST_FIRST (int ) ;
 int SLIST_REMOVE_HEAD (int ,int ) ;
 TYPE_1__* TAILQ_FIRST (int ) ;
 int TXT_BACKSLASH ;
 int TXT_BEAUTIFY ;
 int TXT_CNTRLD ;
 int TXT_CR ;
 int TXT_PROMPT ;
 scalar_t__ ex_cmd (TYPE_2__*) ;
 int ex_fflush (TYPE_2__*) ;
 scalar_t__ ex_init (TYPE_2__*) ;
 int ex_puts (TYPE_2__*,char*) ;
 scalar_t__ ex_txt (TYPE_2__*,int ,char,int ) ;
 scalar_t__ file_end (TYPE_2__*,int *,scalar_t__) ;
 int free (TYPE_3__*) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int msgq_status (TYPE_2__*,int ,int ) ;
 int q ;
 int screen_end (TYPE_2__*) ;
 TYPE_2__* screen_next (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,TYPE_3__*,int ) ;

int
ex(SCR **spp)
{
 EX_PRIVATE *exp;
 GS *gp;
 MSGS *mp;
 SCR *sp;
 TEXT *tp;
 u_int32_t flags;

 sp = *spp;
 gp = sp->gp;
 exp = EXP(sp);


 if (ex_init(sp))
  return (1);


 while ((mp = SLIST_FIRST(gp->msgq)) != ((void*)0)) {
  gp->scr_msg(sp, mp->mtype, mp->buf, mp->len);
  SLIST_REMOVE_HEAD(gp->msgq, q);
  free(mp->buf);
  free(mp);
 }


 if (F_ISSET(gp, G_SCRIPTED)) {
  gp->excmd.if_lno = 1;
  gp->excmd.if_name = "script";
 }
 LF_INIT(TXT_BACKSLASH | TXT_CNTRLD | TXT_CR);
 for (;; ++gp->excmd.if_lno) {

  if (F_ISSET(sp, SC_STATUS)) {
   if (!F_ISSET(sp, SC_EX_SILENT))
    msgq_status(sp, sp->lno, 0);
   F_CLR(sp, SC_STATUS);
  }
  (void)ex_fflush(sp);


  if (O_ISSET(sp, O_BEAUTIFY))
   LF_SET(TXT_BEAUTIFY);
  if (O_ISSET(sp, O_PROMPT))
   LF_SET(TXT_PROMPT);


  CLR_INTERRUPT(sp);
  if (ex_txt(sp, sp->tiq, ':', flags))
   return (1);
  if (INTERRUPTED(sp)) {
   (void)ex_puts(sp, "\n");
   (void)ex_fflush(sp);
   continue;
  }


  CLEAR_EX_PARSER(&gp->excmd);





  tp = TAILQ_FIRST(sp->tiq);
  if (tp->len == 0) {
   gp->excmd.cp = L(" ");
   gp->excmd.clen = 1;
  } else {
   gp->excmd.cp = tp->lb;
   gp->excmd.clen = tp->len;
  }
  F_INIT(&gp->excmd, E_NRSEP);

  if (ex_cmd(sp) && F_ISSET(gp, G_SCRIPTED))
   return (1);

  if (INTERRUPTED(sp)) {
   CLR_INTERRUPT(sp);
   msgq(sp, M_ERR, "170|Interrupted");
  }





  if (F_ISSET(gp, G_SRESTART) || F_ISSET(sp, SC_SSWITCH | SC_VI)) {
   *spp = sp;
   break;
  }


  F_CLR(sp, SC_FSWITCH);







  if (F_ISSET(sp, SC_EXIT | SC_EXIT_FORCE)) {
   if (file_end(sp, ((void*)0), F_ISSET(sp, SC_EXIT_FORCE)))
    return (1);
   *spp = screen_next(sp);
   return (screen_end(sp));
  }
 }
 return (0);
}
