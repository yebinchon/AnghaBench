
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int heim_object_t ;
typedef TYPE_1__* heim_auto_release_t ;
struct TYPE_3__ {int pool_mutex; int pool; } ;


 int BASE2PTR (int ) ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int HEIM_TAILQ_EMPTY (int *) ;
 int HEIM_TAILQ_FIRST (int *) ;
 int heim_release (int ) ;

void
heim_auto_release_drain(heim_auto_release_t autorel)
{
    heim_object_t obj;



    HEIMDAL_MUTEX_lock(&autorel->pool_mutex);
    while(!HEIM_TAILQ_EMPTY(&autorel->pool)) {
 obj = HEIM_TAILQ_FIRST(&autorel->pool);
 HEIMDAL_MUTEX_unlock(&autorel->pool_mutex);
 heim_release(BASE2PTR(obj));
 HEIMDAL_MUTEX_lock(&autorel->pool_mutex);
    }
    HEIMDAL_MUTEX_unlock(&autorel->pool_mutex);
}
