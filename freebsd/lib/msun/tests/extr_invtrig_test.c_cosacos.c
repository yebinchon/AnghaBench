
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acos (double) ;
 long double cosl (int ) ;

__attribute__((used)) static long double
cosacos(double x)
{

 return (cosl(acos(x)));
}
