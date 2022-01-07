
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int (* arch_copyout ) (int ,char*,int) ;} ;


 TYPE_1__ archsw ;
 char* malloc (scalar_t__) ;
 scalar_t__ strlenout (int ) ;
 int stub1 (int ,char*,int) ;

char *
strdupout(vm_offset_t str)
{
    char *result, *cp;

    result = malloc(strlenout(str) + 1);
    for (cp = result; ;cp++) {
 archsw.arch_copyout(str++, cp, 1);
 if (*cp == 0)
     break;
    }
    return(result);
}
