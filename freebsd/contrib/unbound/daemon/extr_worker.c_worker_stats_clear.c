
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mesh; int cfg; } ;
struct worker {TYPE_2__* back; TYPE_1__ env; int stats; } ;
struct TYPE_4__ {scalar_t__ num_tcp_outgoing; scalar_t__ unwanted_replies; } ;


 int mesh_stats_clear (int ) ;
 int server_stats_init (int *,int ) ;

void worker_stats_clear(struct worker* worker)
{
 server_stats_init(&worker->stats, worker->env.cfg);
 mesh_stats_clear(worker->env.mesh);
 worker->back->unwanted_replies = 0;
 worker->back->num_tcp_outgoing = 0;
}
