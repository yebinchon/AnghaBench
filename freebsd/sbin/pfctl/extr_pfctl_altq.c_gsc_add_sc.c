
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_curve {scalar_t__ d; scalar_t__ m2; scalar_t__ m1; } ;
struct gen_sc {int dummy; } ;


 double INFINITY ;
 int gsc_add_seg (struct gen_sc*,double,double,double,double) ;
 scalar_t__ is_sc_null (struct service_curve*) ;

__attribute__((used)) static void
gsc_add_sc(struct gen_sc *gsc, struct service_curve *sc)
{
 if (is_sc_null(sc))
  return;
 if (sc->d != 0)
  gsc_add_seg(gsc, 0.0, 0.0, (double)sc->d, (double)sc->m1);
 gsc_add_seg(gsc, (double)sc->d, 0.0, INFINITY, (double)sc->m2);
}
