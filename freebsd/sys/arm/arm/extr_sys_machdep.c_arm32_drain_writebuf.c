
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__* td_retval; } ;


 int cpu_drain_writebuf () ;
 int cpu_l2cache_drain_writebuf () ;
 int dsb () ;

__attribute__((used)) static int
arm32_drain_writebuf(struct thread *td, void *args)
{



 cpu_drain_writebuf();




 td->td_retval[0] = 0;
 return (0);
}
