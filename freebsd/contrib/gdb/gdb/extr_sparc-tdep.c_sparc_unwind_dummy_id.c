
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
typedef int CORE_ADDR ;


 int SPARC_SP_REGNUM ;
 struct frame_id frame_id_build (int ,int ) ;
 int frame_pc_unwind (struct frame_info*) ;
 int frame_unwind_register_unsigned (struct frame_info*,int ) ;

__attribute__((used)) static struct frame_id
sparc_unwind_dummy_id (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  CORE_ADDR sp;

  sp = frame_unwind_register_unsigned (next_frame, SPARC_SP_REGNUM);
  return frame_id_build (sp, frame_pc_unwind (next_frame));
}
