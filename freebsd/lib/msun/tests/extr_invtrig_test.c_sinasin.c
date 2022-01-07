
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asin (double) ;
 long double sinl (int ) ;

__attribute__((used)) static long double
sinasin(double x)
{

 return (sinl(asin(x)));
}
