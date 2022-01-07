
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld {int dummy; } ;


 int DOPRINT_START (long double*) ;
 int ENTERI () ;
 int RETURNSPI (struct ld*) ;
 int k_logl (long double,struct ld*) ;

long double
logl(long double x)
{
 struct ld r;

 ENTERI();
 DOPRINT_START(&x);
 k_logl(x, &r);
 RETURNSPI(&r);
}
