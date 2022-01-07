
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* mesh; } ;
struct worker {TYPE_3__ env; } ;
struct ub_server_stats {long long max_query_list_size; int sum_query_list_size; int num_queries_prefetch; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_5__ {TYPE_1__ all; } ;



void server_stats_prefetch(struct ub_server_stats* stats, struct worker* worker)
{
 stats->num_queries_prefetch++;

 stats->sum_query_list_size += worker->env.mesh->all.count;
 if((long long)worker->env.mesh->all.count > stats->max_query_list_size)
  stats->max_query_list_size = (long long)worker->env.mesh->all.count;
}
