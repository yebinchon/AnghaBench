
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atanf (float) ;
 long double tanl (int ) ;

__attribute__((used)) static long double
tanatanf(float x)
{

 return (tanl(atanf(x)));
}
