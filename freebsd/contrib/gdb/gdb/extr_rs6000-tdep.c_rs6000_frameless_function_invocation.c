
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs6000_framedata {int frameless; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ SIGTRAMP_FRAME ;
 int get_frame_func (struct frame_info*) ;
 scalar_t__ get_frame_pc (struct frame_info*) ;
 scalar_t__ get_frame_type (int *) ;
 int * get_next_frame (struct frame_info*) ;
 int skip_prologue (int ,scalar_t__,struct rs6000_framedata*) ;

int
rs6000_frameless_function_invocation (struct frame_info *fi)
{
  CORE_ADDR func_start;
  struct rs6000_framedata fdata;



  if (get_next_frame (fi) != ((void*)0)
      && !(get_frame_type (get_next_frame (fi)) == SIGTRAMP_FRAME))
    return 0;

  func_start = get_frame_func (fi);




  if (!func_start)
    {




      if (get_frame_pc (fi) == 0)
 return 1;
      else
 return 0;
    }

  (void) skip_prologue (func_start, get_frame_pc (fi), &fdata);
  return fdata.frameless;
}
