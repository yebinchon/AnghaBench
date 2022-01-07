
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int (* arch_copyout ) (int ,char*,int) ;} ;


 TYPE_1__ archsw ;
 int stub1 (int ,char*,int) ;

size_t
strlenout(vm_offset_t src)
{
    char c;
    size_t len;

    for (len = 0; ; len++) {
 archsw.arch_copyout(src++, &c, 1);
 if (c == 0)
     break;
    }
    return(len);
}
