
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int assert (int ) ;
 int tcache_available (int *) ;
 int tcache_flush_cache (int *,int ) ;
 int tsd_tcachep_get (int *) ;

void
tcache_flush(tsd_t *tsd) {
 assert(tcache_available(tsd));
 tcache_flush_cache(tsd, tsd_tcachep_get(tsd));
}
