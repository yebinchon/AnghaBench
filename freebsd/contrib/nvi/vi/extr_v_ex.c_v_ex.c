
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_19__ {int ccnt; int tiq; int * gp; } ;
struct TYPE_18__ {scalar_t__ term; int len; int lb; } ;
typedef TYPE_1__ TEXT ;
typedef TYPE_2__ SCR ;
typedef int GS ;


 int EXCMD_RUNNING (int *) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int O_CEDIT ;
 int * O_STR (TYPE_2__*,int ) ;
 int SC_EX_WAIT_NO ;
 int SC_SCR_EXWROTE ;
 TYPE_1__* TAILQ_FIRST (int ) ;
 scalar_t__ TERM_BS ;
 scalar_t__ TERM_CEDIT ;
 scalar_t__ TERM_OK ;
 int TXT_BS ;
 int TXT_CEDIT ;
 int TXT_FILEC ;
 int TXT_PROMPT ;
 int ex_cmd (TYPE_2__*) ;
 int ex_fflush (TYPE_2__*) ;
 scalar_t__ ex_run_str (TYPE_2__*,int *,int ,int,int ,int) ;
 int putchar (char) ;
 int v_ecl (TYPE_2__*) ;
 scalar_t__ v_ecl_log (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ v_ex_done (TYPE_2__*,int *) ;
 scalar_t__ v_tcmd (TYPE_2__*,int *,char,int) ;
 scalar_t__ vs_ex_resolve (TYPE_2__*,int*) ;
 int vs_home (TYPE_2__*) ;

int
v_ex(SCR *sp, VICMD *vp)
{
 GS *gp;
 TEXT *tp;
 int do_cedit, do_resolution, ifcontinue;

 gp = sp->gp;
 for (do_cedit = do_resolution = 0;;) {





  if (!EXCMD_RUNNING(gp)) {

   if (v_tcmd(sp, vp, ':',
       TXT_BS | TXT_CEDIT | TXT_FILEC | TXT_PROMPT))
    return (1);
   tp = TAILQ_FIRST(sp->tiq);






   if (tp->term == TERM_CEDIT) {
    if (tp->len > 1 && v_ecl_log(sp, tp))
     return (1);
    do_cedit = 1;
    break;
   }


   if (tp->term == TERM_BS)
    break;


   if (tp->term != TERM_OK)
    break;


   if (O_STR(sp, O_CEDIT) != ((void*)0) && v_ecl_log(sp, tp))
    return (1);


   if (ex_run_str(sp, ((void*)0), tp->lb, tp->len, 0, 1))
    return (1);
  }


  vs_home(sp);
  if (F_ISSET(sp, SC_SCR_EXWROTE))
   (void)putchar('\n');


  (void)ex_cmd(sp);


  (void)ex_fflush(sp);


  if (vs_ex_resolve(sp, &ifcontinue))
   return (1);





  if (!ifcontinue)
   break;
  do_resolution = 1;


  ++sp->ccnt;
 }






 if (do_resolution) {
  F_SET(sp, SC_EX_WAIT_NO);
  if (vs_ex_resolve(sp, &ifcontinue))
   return (1);
 }


 if (v_ex_done(sp, vp))
  return (1);


 if (do_cedit)
  return (v_ecl(sp));

 return (0);
}
