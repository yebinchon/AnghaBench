
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asinf (float) ;
 long double sinl (int ) ;

__attribute__((used)) static long double
sinasinf(float x)
{

 return (sinl(asinf(x)));
}
