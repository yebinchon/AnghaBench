
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double remquol (long double,long double,int*) ;

long double
remainderl(long double x, long double y)
{
 int quo;

 return (remquol(x, y, &quo));
}
