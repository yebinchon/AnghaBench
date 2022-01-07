
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_helper_data {int dummy; } ;


 int freebsd32_sysent ;
 int kern_syscall_helper_register (int ,struct syscall_helper_data*,int) ;

int
syscall32_helper_register(struct syscall_helper_data *sd, int flags)
{

 return (kern_syscall_helper_register(freebsd32_sysent, sd, flags));
}
