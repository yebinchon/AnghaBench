
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtt_info {int dummy; } ;


 int calc_rto (struct rtt_info const*) ;

int rtt_notimeout(const struct rtt_info* rtt)
{
 return calc_rto(rtt);
}
