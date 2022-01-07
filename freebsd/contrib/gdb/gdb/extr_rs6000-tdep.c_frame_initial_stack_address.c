
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rs6000_framedata {scalar_t__ alloca_reg; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {void* initial_sp; } ;
typedef void* CORE_ADDR ;


 int DEPRECATED_REGISTER_RAW_SIZE (scalar_t__) ;
 int MAX_REGISTER_SIZE ;
 int deprecated_get_frame_saved_regs (struct frame_info*) ;
 void* extract_unsigned_integer (char*,int ) ;
 int frame_get_saved_regs (struct frame_info*,struct rs6000_framedata*) ;
 scalar_t__ frame_register_read (struct frame_info*,scalar_t__,char*) ;
 void* get_frame_base (struct frame_info*) ;
 TYPE_1__* get_frame_extra_info (struct frame_info*) ;
 int get_frame_func (struct frame_info*) ;
 int get_frame_pc (struct frame_info*) ;
 int skip_prologue (int ,int ,struct rs6000_framedata*) ;

__attribute__((used)) static CORE_ADDR
frame_initial_stack_address (struct frame_info *fi)
{
  CORE_ADDR tmpaddr;
  struct rs6000_framedata fdata;
  struct frame_info *callee_fi;




  if (get_frame_extra_info (fi)->initial_sp)
    return get_frame_extra_info (fi)->initial_sp;



  (void) skip_prologue (get_frame_func (fi), get_frame_pc (fi), &fdata);




  if (!deprecated_get_frame_saved_regs (fi))
    frame_get_saved_regs (fi, &fdata);




  if (fdata.alloca_reg < 0)
    {
      get_frame_extra_info (fi)->initial_sp = get_frame_base (fi);
      return get_frame_extra_info (fi)->initial_sp;
    }



  {
    char tmpbuf[MAX_REGISTER_SIZE];
    if (frame_register_read (fi, fdata.alloca_reg, tmpbuf))
      {
 get_frame_extra_info (fi)->initial_sp
   = extract_unsigned_integer (tmpbuf,
          DEPRECATED_REGISTER_RAW_SIZE (fdata.alloca_reg));
      }
    else



      get_frame_extra_info (fi)->initial_sp = get_frame_base (fi);
  }
  return get_frame_extra_info (fi)->initial_sp;
}
