
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amd64_syscall_ret_flush_l1d_inline (int) ;

void
amd64_syscall_ret_flush_l1d(int error)
{

 amd64_syscall_ret_flush_l1d_inline(error);
}
