
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stacksize_attr; int guardsize_attr; scalar_t__ stackaddr_attr; } ;
struct pthread {TYPE_1__ attr; } ;


 int _rtld_get_stack_prot () ;
 int mprotect (char*,int,int ) ;
 int round_up (int ) ;

void
_thr_stack_fix_protection(struct pthread *thrd)
{

 mprotect((char *)thrd->attr.stackaddr_attr +
     round_up(thrd->attr.guardsize_attr),
     round_up(thrd->attr.stacksize_attr),
     _rtld_get_stack_prot());
}
