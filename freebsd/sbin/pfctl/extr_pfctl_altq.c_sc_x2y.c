
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_curve {scalar_t__ m2; scalar_t__ d; scalar_t__ m1; } ;



__attribute__((used)) static double
sc_x2y(struct service_curve *sc, double x)
{
 double y;

 if (x <= (double)sc->d)

  y = x * (double)sc->m1;
 else

  y = (double)sc->d * (double)sc->m1
   + (x - (double)sc->d) * (double)sc->m2;
 return (y);
}
