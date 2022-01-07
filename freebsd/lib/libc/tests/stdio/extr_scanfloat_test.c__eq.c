
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double fabsl (long double) ;

__attribute__((used)) static int
_eq(long double epsilon, long double a, long double b)
{
 long double delta;

 delta = fabsl(a - b);
 return (delta <= epsilon);
}
