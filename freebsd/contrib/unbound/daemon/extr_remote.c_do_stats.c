
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int total ;
struct ub_stats_info {double mesh_time_median; } ;
struct daemon_remote {TYPE_2__* worker; } ;
struct daemon {int num; TYPE_1__* cfg; int * workers; } ;
struct TYPE_6__ {struct daemon* daemon; } ;
struct TYPE_5__ {scalar_t__ stat_extended; } ;
typedef int RES ;


 int log_assert (int) ;
 int memset (struct ub_stats_info*,int ,int) ;
 int print_ext (int *,struct ub_stats_info*) ;
 int print_hist (int *,struct ub_stats_info*) ;
 int print_mem (int *,TYPE_2__*,struct daemon*,struct ub_stats_info*) ;
 int print_stats (int *,char*,struct ub_stats_info*) ;
 int print_thread_stats (int *,int,struct ub_stats_info*) ;
 int print_uptime (int *,TYPE_2__*,int) ;
 int server_stats_add (struct ub_stats_info*,struct ub_stats_info*) ;
 int server_stats_obtain (TYPE_2__*,int ,struct ub_stats_info*,int) ;

__attribute__((used)) static void
do_stats(RES* ssl, struct daemon_remote* rc, int reset)
{
 struct daemon* daemon = rc->worker->daemon;
 struct ub_stats_info total;
 struct ub_stats_info s;
 int i;
 memset(&total, 0, sizeof(total));
 log_assert(daemon->num > 0);

 for(i=0; i<daemon->num; i++) {
  server_stats_obtain(rc->worker, daemon->workers[i], &s, reset);
  if(!print_thread_stats(ssl, i, &s))
   return;
  if(i == 0)
   total = s;
  else server_stats_add(&total, &s);
 }

 total.mesh_time_median /= (double)daemon->num;
 if(!print_stats(ssl, "total", &total))
  return;
 if(!print_uptime(ssl, rc->worker, reset))
  return;
 if(daemon->cfg->stat_extended) {
  if(!print_mem(ssl, rc->worker, daemon, &total))
   return;
  if(!print_hist(ssl, &total))
   return;
  if(!print_ext(ssl, &total))
   return;
 }
}
