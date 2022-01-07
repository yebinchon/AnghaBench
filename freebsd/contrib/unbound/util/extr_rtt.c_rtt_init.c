
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtt_info {int rttvar; int rto; scalar_t__ srtt; } ;


 int UNKNOWN_SERVER_NICENESS ;
 int calc_rto (struct rtt_info*) ;

void
rtt_init(struct rtt_info* rtt)
{
 rtt->srtt = 0;
 rtt->rttvar = UNKNOWN_SERVER_NICENESS/4;
 rtt->rto = calc_rto(rtt);


}
