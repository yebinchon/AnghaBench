
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_zu_t ;


 int ATOMIC_RELAXED ;
 size_t atomic_load_zu (int *,int ) ;
 int atomic_store_zu (int *,size_t,int ) ;

__attribute__((used)) static void
accum_atomic_zu(atomic_zu_t *dst, atomic_zu_t *src) {
 size_t cur_dst = atomic_load_zu(dst, ATOMIC_RELAXED);
 size_t cur_src = atomic_load_zu(src, ATOMIC_RELAXED);
 atomic_store_zu(dst, cur_dst + cur_src, ATOMIC_RELAXED);
}
