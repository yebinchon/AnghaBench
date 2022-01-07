
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_frame_cache {int pc; int sp; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 struct frame_id frame_id_build (int ,int ) ;
 struct kgdb_frame_cache* kgdb_trgt_frame_cache (struct frame_info*,void**) ;

__attribute__((used)) static void
kgdb_trgt_trapframe_this_id(struct frame_info *next_frame, void **this_cache,
    struct frame_id *this_id)
{
 struct kgdb_frame_cache *cache;

 cache = kgdb_trgt_frame_cache(next_frame, this_cache);
 *this_id = frame_id_build(cache->sp, cache->pc);
}
