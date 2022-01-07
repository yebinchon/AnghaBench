
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_long ;
struct trapframe {int tf_spsr; void* tf_elr; void** tf_x; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {void* entry_addr; } ;


 int PSR_M_32 ;
 int memset (struct trapframe*,int ,int) ;

__attribute__((used)) static void
freebsd32_setregs(struct thread *td, struct image_params *imgp,
   u_long stack)
{
 struct trapframe *tf = td->td_frame;

 memset(tf, 0, sizeof(struct trapframe));






 tf->tf_x[0] = stack;

 tf->tf_x[13] = stack;

 tf->tf_x[14] = imgp->entry_addr;
 tf->tf_elr = imgp->entry_addr;
 tf->tf_spsr = PSR_M_32;
}
