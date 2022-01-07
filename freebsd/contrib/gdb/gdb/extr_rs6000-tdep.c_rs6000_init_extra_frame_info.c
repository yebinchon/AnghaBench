
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_extra_info {scalar_t__ initial_sp; } ;


 int SIGTRAMP_FRAME ;
 scalar_t__ TEXT_SEGMENT_BASE ;
 int deprecated_set_frame_type (struct frame_info*,int ) ;
 struct frame_extra_info* frame_extra_info_zalloc (struct frame_info*,int) ;
 scalar_t__ get_frame_pc (struct frame_info*) ;
 int * get_next_frame (struct frame_info*) ;

void
rs6000_init_extra_frame_info (int fromleaf, struct frame_info *fi)
{
  struct frame_extra_info *extra_info =
    frame_extra_info_zalloc (fi, sizeof (struct frame_extra_info));
  extra_info->initial_sp = 0;
  if (get_next_frame (fi) != ((void*)0)
      && get_frame_pc (fi) < TEXT_SEGMENT_BASE)




    deprecated_set_frame_type (fi, SIGTRAMP_FRAME);
}
