
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int freebsd32_sysent ;
 int kern_syscall_module_handler (int ,struct module*,int,void*) ;

int
syscall32_module_handler(struct module *mod, int what, void *arg)
{

 return (kern_syscall_module_handler(freebsd32_sysent, mod, what, arg));
}
