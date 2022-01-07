
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct trapframe {int dummy; } ;
struct thread {int dummy; } ;
struct ksig {int dummy; } ;


 int abort_fatal (struct trapframe*,int ,int ,int ,int ,struct thread*,struct ksig*) ;

__attribute__((used)) static int
abort_icache(struct trapframe *tf, u_int idx, u_int fsr, u_int far,
    u_int prefetch, struct thread *td, struct ksig *ksig)
{

 abort_fatal(tf, idx, fsr, far, prefetch, td, ksig);
 return(0);
}
