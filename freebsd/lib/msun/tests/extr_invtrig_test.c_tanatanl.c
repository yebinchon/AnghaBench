
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atanl (long double) ;
 long double tanl (int ) ;

__attribute__((used)) static long double
tanatanl(long double x)
{

 return (tanl(atanl(x)));
}
