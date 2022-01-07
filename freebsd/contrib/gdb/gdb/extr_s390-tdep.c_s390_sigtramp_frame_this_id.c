
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_sigtramp_unwind_cache {int frame_base; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 struct frame_id frame_id_build (int ,int ) ;
 int frame_pc_unwind (struct frame_info*) ;
 struct s390_sigtramp_unwind_cache* s390_sigtramp_frame_unwind_cache (struct frame_info*,void**) ;

__attribute__((used)) static void
s390_sigtramp_frame_this_id (struct frame_info *next_frame,
        void **this_prologue_cache,
        struct frame_id *this_id)
{
  struct s390_sigtramp_unwind_cache *info
    = s390_sigtramp_frame_unwind_cache (next_frame, this_prologue_cache);
  *this_id = frame_id_build (info->frame_base, frame_pc_unwind (next_frame));
}
