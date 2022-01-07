
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sa_lock; } ;
typedef TYPE_1__ sa_os_t ;
struct TYPE_7__ {int sa_refcount; } ;
typedef TYPE_2__ sa_idx_tab_t ;
struct TYPE_8__ {TYPE_1__* os_sa; } ;
typedef TYPE_3__ objset_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int zfs_refcount_add (int *,int *) ;

__attribute__((used)) static void
sa_idx_tab_hold(objset_t *os, sa_idx_tab_t *idx_tab)
{
 sa_os_t *sa = os->os_sa;

 ASSERT(MUTEX_HELD(&sa->sa_lock));
 (void) zfs_refcount_add(&idx_tab->sa_refcount, ((void*)0));
}
