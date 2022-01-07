
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct thread {TYPE_1__* td_frame; } ;
typedef int register_t ;
struct TYPE_2__ {int tf_pc; int tf_usr_lr; int tf_usr_sp; int tf_r0; } ;





 int KASSERT (int,char*) ;

__attribute__((used)) static u_int
ptrace_get_usr_reg(void *cookie, int reg)
{
 int ret;
 struct thread *td = cookie;

 KASSERT(((reg >= 0) && (reg <= 129)),
  ("reg is outside range"));

 switch(reg) {
 case 129:
  ret = td->td_frame->tf_pc;
  break;
 case 130:
  ret = td->td_frame->tf_usr_lr;
  break;
 case 128:
  ret = td->td_frame->tf_usr_sp;
  break;
 default:
  ret = *((register_t*)&td->td_frame->tf_r0 + reg);
  break;
 }

 return (ret);
}
