
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_id_t ;
struct TYPE_2__ {scalar_t__ sy_entry; scalar_t__ sy_return; } ;


 int ASSERT (int) ;
 scalar_t__ SYSTRACE_ISENTRY (uintptr_t) ;
 int SYSTRACE_SYSNUM (uintptr_t) ;
 TYPE_1__* sysent ;

__attribute__((used)) static void
systrace_destroy(void *arg, dtrace_id_t id, void *parg)
{
}
