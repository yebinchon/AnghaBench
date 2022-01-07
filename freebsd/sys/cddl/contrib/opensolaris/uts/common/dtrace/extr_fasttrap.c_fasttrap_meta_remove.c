
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_3__ {int dthpv_provname; } ;
typedef TYPE_1__ dtrace_helper_provdesc_t ;


 int fasttrap_provider_retire (int ,int ,int) ;

__attribute__((used)) static void
fasttrap_meta_remove(void *arg, dtrace_helper_provdesc_t *dhpv, pid_t pid)
{






 fasttrap_provider_retire(pid, dhpv->dthpv_provname, 1);
}
