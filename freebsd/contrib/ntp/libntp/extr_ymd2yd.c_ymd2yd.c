
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ntpcal_edate_to_yeardays (int,int,int) ;

int
ymd2yd(
 int y,
 int m,
 int d)
{
 return ntpcal_edate_to_yeardays(y-1, m-1, d-1) + 1;
}
