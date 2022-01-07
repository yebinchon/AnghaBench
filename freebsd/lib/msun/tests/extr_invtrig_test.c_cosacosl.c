
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acosl (long double) ;
 long double cosl (int ) ;

__attribute__((used)) static long double
cosacosl(long double x)
{

 return (cosl(acosl(x)));
}
