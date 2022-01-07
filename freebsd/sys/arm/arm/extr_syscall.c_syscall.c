
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct TYPE_2__ {int nap; } ;
struct thread {TYPE_1__ td_sa; } ;


 int syscallenter (struct thread*) ;
 int syscallret (struct thread*) ;

__attribute__((used)) static void
syscall(struct thread *td, struct trapframe *frame)
{

 td->td_sa.nap = 4;
 syscallenter(td);
 syscallret(td);
}
