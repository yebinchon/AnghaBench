
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_frame_cache {int dummy; } ;
struct frame_info {int dummy; } ;


 struct sparc_frame_cache* sparc_frame_cache (struct frame_info*,void**) ;

__attribute__((used)) static struct sparc_frame_cache *
sparc64_frame_cache (struct frame_info *next_frame, void **this_cache)
{
  return sparc_frame_cache (next_frame, this_cache);
}
