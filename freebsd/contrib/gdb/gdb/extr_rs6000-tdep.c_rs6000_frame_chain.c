
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {int dummy; } ;
struct TYPE_2__ {int wordsize; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ DEPRECATED_FRAMELESS_FUNCTION_INVOCATION (struct frame_info*) ;
 scalar_t__ DEPRECATED_FRAMELESS_FUNCTION_INVOCATION_P () ;
 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ SIGTRAMP_FRAME ;
 scalar_t__ SIG_FRAME_FP_OFFSET ;
 int current_gdbarch ;
 scalar_t__ deprecated_inside_entry_file (scalar_t__) ;
 scalar_t__ entry_point_address () ;
 TYPE_1__* gdbarch_tdep (int ) ;
 scalar_t__ get_frame_base (struct frame_info*) ;
 scalar_t__ get_frame_pc (struct frame_info*) ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 struct frame_info* get_next_frame (struct frame_info*) ;
 scalar_t__ read_memory_addr (scalar_t__,int) ;

CORE_ADDR
rs6000_frame_chain (struct frame_info *thisframe)
{
  CORE_ADDR fp, fpp, lr;
  int wordsize = gdbarch_tdep (current_gdbarch)->wordsize;

  if (DEPRECATED_PC_IN_CALL_DUMMY (get_frame_pc (thisframe),
       get_frame_base (thisframe),
       get_frame_base (thisframe)))


    return read_memory_addr (get_frame_base (thisframe), wordsize);

  if (deprecated_inside_entry_file (get_frame_pc (thisframe))
      || get_frame_pc (thisframe) == entry_point_address ())
    return 0;

  if ((get_frame_type (thisframe) == SIGTRAMP_FRAME))
    fp = read_memory_addr (get_frame_base (thisframe) + SIG_FRAME_FP_OFFSET,
      wordsize);
  else if (get_next_frame (thisframe) != ((void*)0)
    && (get_frame_type (get_next_frame (thisframe)) == SIGTRAMP_FRAME)
    && (DEPRECATED_FRAMELESS_FUNCTION_INVOCATION_P ()
        && DEPRECATED_FRAMELESS_FUNCTION_INVOCATION (thisframe)))


    fp = get_frame_base (thisframe);
  else
    fp = read_memory_addr (get_frame_base (thisframe), wordsize);
  return fp;
}
