
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int (* close ) (TYPE_3__*) ;} ;
struct TYPE_9__ {TYPE_3__* log; } ;
struct TYPE_8__ {TYPE_2__* ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXF ;


 int M_ERR ;
 int M_SYSERR ;
 int log_init (TYPE_1__*,TYPE_2__*) ;
 int msgq (TYPE_1__*,int ,char*,...) ;
 int stub1 (TYPE_3__*) ;
 int tail (char*) ;

__attribute__((used)) static void
log_err(
 SCR *sp,
 char *file,
 int line)
{
 EXF *ep;

 msgq(sp, M_SYSERR, "015|%s/%d: log put error", tail(file), line);
 ep = sp->ep;
 (void)ep->log->close(ep->log);
 if (!log_init(sp, ep))
  msgq(sp, M_ERR, "267|Log restarted");
}
