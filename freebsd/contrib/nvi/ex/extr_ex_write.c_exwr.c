
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_13__ ;
typedef struct TYPE_37__ TYPE_12__ ;


typedef enum which { ____Placeholder_which } which ;
struct TYPE_38__ {scalar_t__ lno; } ;
struct TYPE_37__ {int lno; } ;
struct TYPE_44__ {int argc; TYPE_13__ addr2; TYPE_12__ addr1; TYPE_2__** argv; TYPE_1__* cmd; int iflags; } ;
struct TYPE_43__ {char* lastbcomm; } ;
struct TYPE_42__ {char* name; struct TYPE_42__* frp; TYPE_3__* gp; } ;
struct TYPE_41__ {int (* scr_rename ) (TYPE_4__*,char*,int) ;} ;
struct TYPE_40__ {char* bp; int len; } ;
struct TYPE_39__ {char* usage; int name; } ;
typedef TYPE_4__ SCR ;
typedef int MARK ;
typedef TYPE_5__ EX_PRIVATE ;
typedef TYPE_6__ EXCMD ;
typedef char CHAR_T ;


 int EXM_FILECOUNT ;
 int EXM_SECURE_F ;
 int EXM_USAGE ;
 TYPE_5__* EXP (TYPE_4__*) ;
 int E_C_FORCE ;
 int FILTER_WRITE ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int FR_EXNAMED ;
 int FR_NAMECHANGE ;
 int FR_TMPEXIT ;
 int FR_TMPFILE ;
 int FS_ALL ;
 int FS_APPEND ;
 int FS_FORCE ;
 int FS_POSSIBLE ;
 int F_CLR (TYPE_4__*,int) ;
 scalar_t__ F_ISSET (TYPE_4__*,int) ;
 int F_SET (TYPE_4__*,int) ;
 int INT2CHAR (TYPE_4__*,char*,int ,char*,size_t) ;
 int LF_INIT (int ) ;
 int LF_SET (int ) ;
 int NEEDFILE (TYPE_4__*,TYPE_6__*) ;
 scalar_t__ O_ISSET (TYPE_4__*,int ) ;
 int O_SECURE ;
 int SC_EX_SILENT ;
 int SC_EX_WAIT_YES ;
 int SC_VI ;
 int STRLEN (char*) ;
 int WRITE ;
 int XIT ;
 int abort () ;
 scalar_t__ argv_exp1 (TYPE_4__*,TYPE_6__*,char*,int ,int) ;
 scalar_t__ argv_exp2 (TYPE_4__*,TYPE_6__*,char*,int ) ;
 scalar_t__ cmdskip (char) ;
 int db_exist (TYPE_4__*,scalar_t__) ;
 int ex_emsg (TYPE_4__*,char*,int ) ;
 scalar_t__ ex_filter (TYPE_4__*,TYPE_6__*,TYPE_12__*,TYPE_13__*,int *,char*,int ) ;
 int ex_puts (TYPE_4__*,char*) ;
 int ex_wemsg (TYPE_4__*,int ,int ) ;
 int file_write (TYPE_4__*,TYPE_12__*,TYPE_13__*,char*,int) ;
 int free (char*) ;
 int set_alt_name (TYPE_4__*,char*) ;
 int stub1 (TYPE_4__*,char*,int) ;
 char* v_strdup (TYPE_4__*,char*,size_t) ;
 char* v_wstrdup (TYPE_4__*,char*,int ) ;

__attribute__((used)) static int
exwr(SCR *sp, EXCMD *cmdp, enum which cmd)
{
 MARK rm;
 int flags;
 char *name;
 CHAR_T *p = ((void*)0);
 size_t nlen;
 char *n;
 int rc;
 EX_PRIVATE *exp;

 NEEDFILE(sp, cmdp);


 LF_INIT(FS_POSSIBLE);
 if (FL_ISSET(cmdp->iflags, E_C_FORCE))
  LF_SET(FS_FORCE);


 if (cmdp->argc != 0)
  for (p = cmdp->argv[0]->bp; *p != '\0' && cmdskip(*p); ++p);


 if (cmdp->argc != 0 && cmd == WRITE && *p == '!') {

  if (O_ISSET(sp, O_SECURE)) {
   ex_wemsg(sp, cmdp->cmd->name, EXM_SECURE_F);
   return (1);
  }


  for (++p; *p && cmdskip(*p); ++p);
  if (*p == '\0') {
   ex_emsg(sp, cmdp->cmd->usage, EXM_USAGE);
   return (1);
  }
  if (argv_exp1(sp, cmdp, p, STRLEN(p), 1))
   return (1);


  exp = EXP(sp);
  free(exp->lastbcomm);
  exp->lastbcomm = v_wstrdup(sp, cmdp->argv[1]->bp,
      cmdp->argv[1]->len);







  F_SET(sp, SC_EX_WAIT_YES);






  if (ex_filter(sp, cmdp, &cmdp->addr1,
      &cmdp->addr2, &rm, cmdp->argv[1]->bp, FILTER_WRITE))
   return (1);


  if (!F_ISSET(sp, SC_VI) && !F_ISSET(sp, SC_EX_SILENT))
   (void)ex_puts(sp, "!\n");

  return (0);
 }


 if (cmdp->addr1.lno <= 1 && !db_exist(sp, cmdp->addr2.lno + 1))
  LF_SET(FS_ALL);


 if (cmdp->argc != 0 && cmd != XIT && p[0] == '>' && p[1] == '>') {
  LF_SET(FS_APPEND);


  for (p += 2; *p && cmdskip(*p); ++p);
 }


 if (cmdp->argc == 0 || *p == '\0')
  return (file_write(sp,
      &cmdp->addr1, &cmdp->addr2, ((void*)0), flags));


 if (argv_exp2(sp, cmdp, p, STRLEN(p)))
  return (1);
 switch (cmdp->argc) {
 case 0:
 case 1:
  abort();

 case 2:
  INT2CHAR(sp, cmdp->argv[1]->bp, cmdp->argv[1]->len+1,
    n, nlen);
  name = v_strdup(sp, n, nlen - 1);







  if (F_ISSET(sp->frp, FR_TMPFILE) &&
      !F_ISSET(sp->frp, FR_EXNAMED)) {
   if ((n = v_strdup(sp, name, nlen - 1)) != ((void*)0)) {
    free(sp->frp->name);
    sp->frp->name = n;
   }
   F_CLR(sp->frp, FR_TMPEXIT | FR_TMPFILE);
   F_SET(sp->frp, FR_NAMECHANGE | FR_EXNAMED);


   (void)sp->gp->scr_rename(sp, sp->frp->name, 1);
  } else
   set_alt_name(sp, name);
  break;
 default:
  INT2CHAR(sp, p, STRLEN(p) + 1, n, nlen);
  ex_emsg(sp, n, EXM_FILECOUNT);
  return (1);
 }

 rc = file_write(sp, &cmdp->addr1, &cmdp->addr2, name, flags);

 free(name);

 return rc;
}
