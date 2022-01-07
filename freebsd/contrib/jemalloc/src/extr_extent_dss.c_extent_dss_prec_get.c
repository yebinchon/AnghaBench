
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dss_prec_t ;


 int ATOMIC_ACQUIRE ;
 scalar_t__ atomic_load_u (int *,int ) ;
 int dss_prec_default ;
 scalar_t__ dss_prec_disabled ;
 int have_dss ;

dss_prec_t
extent_dss_prec_get(void) {
 dss_prec_t ret;

 if (!have_dss) {
  return dss_prec_disabled;
 }
 ret = (dss_prec_t)atomic_load_u(&dss_prec_default, ATOMIC_ACQUIRE);
 return ret;
}
