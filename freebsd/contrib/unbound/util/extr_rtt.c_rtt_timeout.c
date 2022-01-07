
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtt_info {int rto; } ;



int
rtt_timeout(const struct rtt_info* rtt)
{
 return rtt->rto;
}
