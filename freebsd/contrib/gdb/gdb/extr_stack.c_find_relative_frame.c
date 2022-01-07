
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 struct frame_info* get_next_frame (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;

struct frame_info *
find_relative_frame (struct frame_info *frame,
       int *level_offset_ptr)
{
  struct frame_info *prev;
  struct frame_info *frame1;



  while (*level_offset_ptr > 0)
    {
      prev = get_prev_frame (frame);
      if (prev == 0)
 break;
      (*level_offset_ptr)--;
      frame = prev;
    }

  if (*level_offset_ptr < 0)
    {
      while (*level_offset_ptr < 0)
 {
   frame1 = get_next_frame (frame);
   if (!frame1)
     break;
   frame = frame1;
   (*level_offset_ptr)++;
 }
    }
  return frame;
}
