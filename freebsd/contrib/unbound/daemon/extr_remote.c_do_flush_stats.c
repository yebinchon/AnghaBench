
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int dummy; } ;
typedef int RES ;


 int send_ok (int *) ;
 int worker_stats_clear (struct worker*) ;

__attribute__((used)) static void
do_flush_stats(RES* ssl, struct worker* worker)
{
 worker_stats_clear(worker);
 send_ok(ssl);
}
