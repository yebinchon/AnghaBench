
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_flag; } ;
typedef TYPE_1__ proc_t ;


 int SNOCD ;
 int curthread ;
 TYPE_1__* ttoproc (int ) ;

__attribute__((used)) static int
dtrace_priv_proc_common_nocd(void)
{
 proc_t *proc;

 if ((proc = ttoproc(curthread)) != ((void*)0) &&
     !(proc->p_flag & SNOCD))
  return (1);

 return (0);
}
