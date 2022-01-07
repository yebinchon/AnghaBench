
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atan (double) ;
 long double tanl (int ) ;

__attribute__((used)) static long double
tanatan(double x)
{

 return (tanl(atan(x)));
}
