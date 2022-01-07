
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time {int dummy; } ;


 int memset (struct pt_time*,int ,int) ;

void pt_time_init(struct pt_time *time)
{
 if (!time)
  return;

 memset(time, 0, sizeof(*time));
}
