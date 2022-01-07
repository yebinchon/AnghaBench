
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lno; scalar_t__ cno; } ;
struct TYPE_6__ {int l_high; int l_cur; int * log; TYPE_1__ l_cursor; scalar_t__ l_len; int * l_lp; } ;
typedef int SCR ;
typedef TYPE_2__ EXF ;


 int DB_RECNO ;
 int F_NOLOG ;
 int F_SET (TYPE_2__*,int ) ;
 int M_SYSERR ;
 int O_CREAT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int * dbopen (int *,int,int,int ,int *) ;
 int msgq (int *,int ,char*) ;

int
log_init(
 SCR *sp,
 EXF *ep)
{
 ep->l_lp = ((void*)0);
 ep->l_len = 0;
 ep->l_cursor.lno = 1;
 ep->l_cursor.cno = 0;
 ep->l_high = ep->l_cur = 1;

 ep->log = dbopen(((void*)0), O_CREAT | O_NONBLOCK | O_RDWR,
     S_IRUSR | S_IWUSR, DB_RECNO, ((void*)0));
 if (ep->log == ((void*)0)) {
  msgq(sp, M_SYSERR, "009|Log file");
  F_SET(ep, F_NOLOG);
  return (1);
 }

 return (0);
}
