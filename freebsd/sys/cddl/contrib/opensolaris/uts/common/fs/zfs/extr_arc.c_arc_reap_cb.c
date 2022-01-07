
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zthr_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ MAX (scalar_t__,int ) ;
 scalar_t__ arc_available_memory () ;
 int arc_c ;
 int arc_kmem_cache_reap_retry_ms ;
 int arc_kmem_reap_soon () ;
 int arc_reduce_target_size (scalar_t__) ;
 int arc_shrink_shift ;
 int delay (int) ;
 int hz ;
 int needfree ;
 int ptob (int ) ;

__attribute__((used)) static void
arc_reap_cb(void *arg, zthr_t *zthr)
{
 int64_t free_memory;




 arc_kmem_reap_soon();
 delay((hz * arc_kmem_cache_reap_retry_ms + 999) / 1000);
 free_memory = arc_available_memory();

 int64_t to_free =
     (arc_c >> arc_shrink_shift) - free_memory;
 if (to_free > 0) {





  arc_reduce_target_size(to_free);
 }
}
