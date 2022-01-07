
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_trapno; } ;


 scalar_t__ dtrace_trap_func (struct trapframe*,int ) ;
 scalar_t__ stub1 (struct trapframe*,int ) ;
 int trap (struct trapframe*) ;

void
trap_check(struct trapframe *frame)
{






 trap(frame);
}
