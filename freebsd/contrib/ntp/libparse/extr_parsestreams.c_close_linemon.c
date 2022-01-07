
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* q_qinfo; } ;
typedef TYPE_3__ queue_t ;
struct TYPE_9__ {TYPE_1__* qi_minfo; } ;
struct TYPE_8__ {char* mi_idname; } ;


 int DD_INSTALL ;
 int Strcmp (char*,char*) ;
 int close_zs_linemon (TYPE_3__*,TYPE_3__*) ;
 int parseprintf (int ,char*) ;

__attribute__((used)) static void
close_linemon(
 register queue_t *q,
 register queue_t *my_q
 )
{



 if (q->q_qinfo && q->q_qinfo->qi_minfo)
 {
  register char *dname = q->q_qinfo->qi_minfo->mi_idname;
 }
 parseprintf(DD_INSTALL, ("close_linemon: cannot find driver name\n"));
}
