
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* os_phys; int os_spa; } ;
typedef TYPE_2__ objset_t ;
typedef int boolean_t ;
struct TYPE_5__ {size_t os_type; } ;


 int * DMU_USERUSED_DNODE (TYPE_2__*) ;
 scalar_t__ SPA_VERSION_USERSPACE ;
 scalar_t__ spa_version (int ) ;
 int ** used_cbs ;

boolean_t
dmu_objset_userused_enabled(objset_t *os)
{
 return (spa_version(os->os_spa) >= SPA_VERSION_USERSPACE &&
     used_cbs[os->os_phys->os_type] != ((void*)0) &&
     DMU_USERUSED_DNODE(os) != ((void*)0));
}
