
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int find_pc_partial_function (int ,char**,int *,int *) ;
 int frame_pc_unwind (struct frame_info*) ;
 scalar_t__ sparc64fbsd_pc_in_sigtramp (int ,char*) ;
 struct frame_unwind const sparc64fbsd_sigtramp_frame_unwind ;

__attribute__((used)) static const struct frame_unwind *
sparc64fbsd_sigtramp_frame_sniffer (struct frame_info *next_frame)
{
  CORE_ADDR pc = frame_pc_unwind (next_frame);
  char *name;

  find_pc_partial_function (pc, &name, ((void*)0), ((void*)0));
  if (sparc64fbsd_pc_in_sigtramp (pc, name))
    return &sparc64fbsd_sigtramp_frame_unwind;

  return ((void*)0);
}
