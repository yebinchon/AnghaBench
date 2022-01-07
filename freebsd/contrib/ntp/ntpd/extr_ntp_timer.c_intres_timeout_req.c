
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ current_time ;
 scalar_t__ droproot ;
 scalar_t__ worker_idle_timer ;

void
intres_timeout_req(
 u_int seconds
 )
{






 if (0 == seconds) {
  worker_idle_timer = 0;
  return;
 }
 worker_idle_timer = current_time + seconds;
}
