
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ get_frame_base_address (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;

__attribute__((used)) static struct frame_info *
find_frame_addr_in_frame_chain (CORE_ADDR frame_addr)
{
  struct frame_info *frame = ((void*)0);

  if (frame_addr == (CORE_ADDR) 0)
    return ((void*)0);

  while (1)
    {
      frame = get_prev_frame (frame);
      if (frame == ((void*)0))
 return ((void*)0);
      if (get_frame_base_address (frame) == frame_addr)
 return frame;
    }
}
