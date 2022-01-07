
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_unwind_cache {int frame_base; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 struct s390_unwind_cache* s390_frame_unwind_cache (struct frame_info*,void**) ;

__attribute__((used)) static CORE_ADDR
s390_frame_base_address (struct frame_info *next_frame, void **this_cache)
{
  struct s390_unwind_cache *info
    = s390_frame_unwind_cache (next_frame, this_cache);
  return info->frame_base;
}
