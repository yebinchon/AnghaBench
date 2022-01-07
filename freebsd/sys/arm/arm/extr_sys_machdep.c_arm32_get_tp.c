
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {void** td_retval; } ;
typedef void* register_t ;


 scalar_t__ ARM_TP_ADDRESS ;
 scalar_t__ get_tls () ;

__attribute__((used)) static int
arm32_get_tp(struct thread *td, void *args)
{




 td->td_retval[0] = *(register_t *)ARM_TP_ADDRESS;

 return (0);
}
