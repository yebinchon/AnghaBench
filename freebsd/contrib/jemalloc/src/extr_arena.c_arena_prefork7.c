
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int * bins; } ;
typedef TYPE_1__ arena_t ;


 unsigned int NBINS ;
 int bin_prefork (int *,int *) ;

void
arena_prefork7(tsdn_t *tsdn, arena_t *arena) {
 for (unsigned i = 0; i < NBINS; i++) {
  bin_prefork(tsdn, &arena->bins[i]);
 }
}
