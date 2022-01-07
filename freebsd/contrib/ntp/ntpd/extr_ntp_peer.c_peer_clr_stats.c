
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ assocpeer_calls ;
 int current_time ;
 scalar_t__ findpeer_calls ;
 scalar_t__ peer_allocations ;
 scalar_t__ peer_demobilizations ;
 int peer_timereset ;

void
peer_clr_stats(void)
{
 findpeer_calls = 0;
 assocpeer_calls = 0;
 peer_allocations = 0;
 peer_demobilizations = 0;
 peer_timereset = current_time;
}
