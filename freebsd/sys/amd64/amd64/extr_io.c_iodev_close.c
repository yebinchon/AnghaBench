
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
struct TYPE_2__ {int tf_rflags; } ;


 int PSL_IOPL ;

int
iodev_close(struct thread *td)
{

 td->td_frame->tf_rflags &= ~PSL_IOPL;
 return (0);
}
