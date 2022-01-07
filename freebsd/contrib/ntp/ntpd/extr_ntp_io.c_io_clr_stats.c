
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_time ;
 scalar_t__ handler_calls ;
 scalar_t__ handler_pkts ;
 int io_timereset ;
 scalar_t__ packets_dropped ;
 scalar_t__ packets_ignored ;
 scalar_t__ packets_notsent ;
 scalar_t__ packets_received ;
 scalar_t__ packets_sent ;

void
io_clr_stats(void)
{
 packets_dropped = 0;
 packets_ignored = 0;
 packets_received = 0;
 packets_sent = 0;
 packets_notsent = 0;

 handler_calls = 0;
 handler_pkts = 0;
 io_timereset = current_time;
}
