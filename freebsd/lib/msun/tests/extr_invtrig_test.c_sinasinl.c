
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asinl (long double) ;
 long double sinl (int ) ;

__attribute__((used)) static long double
sinasinl(long double x)
{

 return (sinl(asinl(x)));
}
