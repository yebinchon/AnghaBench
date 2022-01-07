
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efirt_callinfo {int dummy; } ;


 int panic (char*) ;

int
efi_rt_arch_call(struct efirt_callinfo *ec)
{

 panic("not implemented");
}
