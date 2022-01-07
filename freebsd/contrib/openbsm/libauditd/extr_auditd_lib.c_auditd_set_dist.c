
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADE_NOERR ;
 int ADE_PARSE ;
 int auditd_dist ;
 int getacdist () ;

int
auditd_set_dist(void)
{
 int ret;

 ret = getacdist();
 if (ret < 0)
  return (ADE_PARSE);

 auditd_dist = ret;

 return (ADE_NOERR);
}
