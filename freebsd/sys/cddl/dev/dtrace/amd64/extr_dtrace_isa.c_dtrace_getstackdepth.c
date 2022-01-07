
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct amd64_frame {struct amd64_frame* f_frame; } ;
struct TYPE_2__ {scalar_t__ td_kstack; int td_kstack_pages; } ;


 int INKERNEL (long) ;
 int PAGE_SIZE ;
 TYPE_1__* curthread ;
 scalar_t__ dtrace_getfp () ;

int
dtrace_getstackdepth(int aframes)
{
 int depth = 0;
 struct amd64_frame *frame;
 vm_offset_t rbp;

 aframes++;
 rbp = dtrace_getfp();
 frame = (struct amd64_frame *)rbp;
 depth++;
 for(;;) {
  if (!INKERNEL((long) frame))
   break;
  if (!INKERNEL((long) frame->f_frame))
   break;
  depth++;
  if (frame->f_frame <= frame ||
      (vm_offset_t)frame->f_frame >= curthread->td_kstack +
      curthread->td_kstack_pages * PAGE_SIZE)
   break;
  frame = frame->f_frame;
 }
 if (depth < aframes)
  return 0;
 else
  return depth - aframes;
}
