
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_last_ip {unsigned long long ip; scalar_t__ suppressed; scalar_t__ have_ip; } ;



void pt_last_ip_init(struct pt_last_ip *last_ip)
{
 if (!last_ip)
  return;

 last_ip->ip = 0ull;
 last_ip->have_ip = 0;
 last_ip->suppressed = 0;
}
