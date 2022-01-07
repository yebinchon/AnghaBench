
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
col(
 const void *vx,
 const void *vy
 )
{
 const long *x = vx;
 const long *y = vy;

 return (*x - *y);
}
