
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mesh; } ;
struct worker {TYPE_1__ env; } ;
typedef int RES ;


 int mesh_delete_all (int ) ;
 int send_ok (int *) ;

__attribute__((used)) static void
do_flush_requestlist(RES* ssl, struct worker* worker)
{
 mesh_delete_all(worker->env.mesh);
 send_ok(ssl);
}
