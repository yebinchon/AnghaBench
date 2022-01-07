
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_4__ {int enq; } ;
typedef TYPE_1__ prof_tdata_t ;


 int assert (int) ;
 int bt2gctx_mtx ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int *) ;
 TYPE_1__* prof_tdata_get (int *,int) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_enter(tsd_t *tsd, prof_tdata_t *tdata) {
 cassert(config_prof);
 assert(tdata == prof_tdata_get(tsd, 0));

 if (tdata != ((void*)0)) {
  assert(!tdata->enq);
  tdata->enq = 1;
 }

 malloc_mutex_lock(tsd_tsdn(tsd), &bt2gctx_mtx);
}
