
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int prof_tctx_t ;
typedef int extent_t ;


 int * extent_prof_tctx_get (int const*) ;

prof_tctx_t *
large_prof_tctx_get(tsdn_t *tsdn, const extent_t *extent) {
 return extent_prof_tctx_get(extent);
}
