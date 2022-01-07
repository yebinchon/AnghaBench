
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct os_time {int sec; int usec; } ;
struct hostapd_neighbor_entry {int lci_date; scalar_t__ stationary; } ;


 scalar_t__ os_get_time (struct os_time*) ;
 int os_time_sub (struct os_time*,int *,struct os_time*) ;

__attribute__((used)) static int hostapd_check_lci_age(struct hostapd_neighbor_entry *nr, u16 max_age)
{
 struct os_time curr, diff;
 unsigned long diff_l;

 if (nr->stationary || max_age == 0xffff)
  return 1;

 if (!max_age)
  return 0;

 if (os_get_time(&curr))
  return 0;

 os_time_sub(&curr, &nr->lci_date, &diff);


 if (diff.sec > 0xffff)
  return 0;


 diff_l = diff.sec * 10 + diff.usec / 100000;

 return max_age > diff_l;
}
