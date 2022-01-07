
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {int argc; TYPE_1__** argv; } ;
struct TYPE_21__ {char* name; } ;
struct TYPE_20__ {int lno; TYPE_4__* frp; TYPE_2__* gp; } ;
struct TYPE_19__ {int (* scr_rename ) (TYPE_3__*,char*,int) ;} ;
struct TYPE_18__ {int len; int bp; } ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ FREF ;
typedef TYPE_5__ EXCMD ;


 int FR_NAMECHANGE ;
 int FR_TMPEXIT ;
 int FR_TMPFILE ;
 int F_CLR (TYPE_4__*,int) ;
 int F_ISSET (TYPE_4__*,int) ;
 int F_SET (TYPE_4__*,int ) ;
 int INT2CHAR (TYPE_3__*,int ,int ,char*,size_t) ;
 int MSTAT_SHOWLAST ;
 int NEEDFILE (TYPE_3__*,TYPE_5__*) ;
 int abort () ;
 int free (char*) ;
 int msgq_status (TYPE_3__*,int ,int ) ;
 int set_alt_name (TYPE_3__*,char*) ;
 int stub1 (TYPE_3__*,char*,int) ;
 char* v_strdup (TYPE_3__*,char*,size_t) ;

int
ex_file(SCR *sp, EXCMD *cmdp)
{
 char *p;
 FREF *frp;
 char *np;
 size_t nlen;

 NEEDFILE(sp, cmdp);

 switch (cmdp->argc) {
 case 0:
  break;
 case 1:
  frp = sp->frp;


  INT2CHAR(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1,
       np, nlen);
  if ((p = v_strdup(sp, np, nlen - 1)) == ((void*)0))
   return (1);


  if (!F_ISSET(frp, FR_TMPFILE))
   set_alt_name(sp, frp->name);


  free(frp->name);
  frp->name = p;





  F_CLR(frp, FR_TMPEXIT | FR_TMPFILE);


  F_SET(frp, FR_NAMECHANGE);


  (void)sp->gp->scr_rename(sp, sp->frp->name, 1);
  break;
 default:
  abort();
 }
 msgq_status(sp, sp->lno, MSTAT_SHOWLAST);
 return (0);
}
