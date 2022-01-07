
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_8__ {int ep; } ;
typedef TYPE_1__ SCR ;
typedef int EXCMD ;


 int F_FIRSTMODIFY ;
 scalar_t__ F_ISSET (int ,int ) ;
 int F_RCV_ON ;
 int M_ERR ;
 int M_INFO ;
 int NEEDFILE (TYPE_1__*,int *) ;
 int RCV_SNAPSHOT ;
 scalar_t__ db_last (TYPE_1__*,int *) ;
 int msgq (TYPE_1__*,int ,char*) ;
 scalar_t__ rcv_init (TYPE_1__*) ;
 scalar_t__ rcv_sync (TYPE_1__*,int ) ;

int
ex_preserve(SCR *sp, EXCMD *cmdp)
{
 recno_t lno;

 NEEDFILE(sp, cmdp);

 if (!F_ISSET(sp->ep, F_RCV_ON)) {
  msgq(sp, M_ERR, "142|Preservation of this file not possible");
  return (1);
 }


 if (F_ISSET(sp->ep, F_FIRSTMODIFY) && rcv_init(sp))
  return (1);


 if (db_last(sp, &lno))
  return (1);


 if (rcv_sync(sp, RCV_SNAPSHOT))
  return (1);

 msgq(sp, M_INFO, "143|File preserved");
 return (0);
}
