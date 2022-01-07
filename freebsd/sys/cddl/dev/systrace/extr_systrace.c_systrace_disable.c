
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_id_t ;
struct TYPE_2__ {scalar_t__ sy_return; scalar_t__ sy_entry; } ;


 TYPE_1__* SYSENT ;
 int SYSTRACE_SYSNUM (uintptr_t) ;
 int systrace_enabled ;
 scalar_t__ systrace_enabled_count ;

__attribute__((used)) static void
systrace_disable(void *arg, dtrace_id_t id, void *parg)
{
 int sysnum = SYSTRACE_SYSNUM((uintptr_t)parg);

 SYSENT[sysnum].sy_entry = 0;
 SYSENT[sysnum].sy_return = 0;
 systrace_enabled_count--;
 if (systrace_enabled_count == 0)
  systrace_enabled = 0;
}
