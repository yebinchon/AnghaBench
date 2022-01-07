
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct thread {TYPE_1__* td_frame; } ;
struct TYPE_2__ {int tf_pc; } ;


 int EINVAL ;
 int arm_predict_branch (struct thread*,int ,int ,int *,int ,int ) ;
 scalar_t__ inst_branch (int ) ;
 scalar_t__ inst_call (int ) ;
 scalar_t__ inst_return (int ) ;
 int ptrace_get_usr_int ;
 int ptrace_get_usr_reg ;

__attribute__((used)) static int
ptrace_get_alternative_next(struct thread *td, uint32_t cur_instr,
    uint32_t *alt_next_address)
{
 int error;

 if (inst_branch(cur_instr) || inst_call(cur_instr) ||
     inst_return(cur_instr)) {
  error = arm_predict_branch(td, cur_instr, td->td_frame->tf_pc,
      alt_next_address, ptrace_get_usr_reg, ptrace_get_usr_int);

  return (error);
 }

 return (EINVAL);
}
