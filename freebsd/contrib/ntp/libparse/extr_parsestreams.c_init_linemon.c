
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* q_qinfo; struct TYPE_11__* q_next; } ;
typedef TYPE_3__ queue_t ;
struct TYPE_10__ {char* mi_idname; } ;
struct TYPE_9__ {TYPE_2__* qi_minfo; } ;


 int DD_INSTALL ;
 int Strcmp (char*,char*) ;
 TYPE_3__* WR (TYPE_3__*) ;
 int init_zs_linemon (TYPE_3__*,TYPE_3__*) ;
 int parseprintf (int ,char*) ;

__attribute__((used)) static int
init_linemon(
 register queue_t *q
 )
{
 register queue_t *dq;

 dq = WR(q);
 while (dq->q_next)
 {
  dq = dq->q_next;
 }




 if (dq->q_qinfo && dq->q_qinfo->qi_minfo)
 {
  register char *dname = dq->q_qinfo->qi_minfo->mi_idname;

  parseprintf(DD_INSTALL, ("init_linemon: driver is \"%s\"\n", dname));
  {
   parseprintf(DD_INSTALL, ("init_linemon: driver \"%s\" not suitable for CD monitoring\n", dname));
   return 0;
  }
 }
 parseprintf(DD_INSTALL, ("init_linemon: cannot find driver\n"));
 return 0;
}
