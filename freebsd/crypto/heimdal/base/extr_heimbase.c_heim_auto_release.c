
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct heim_base {TYPE_1__* autorelpool; } ;
struct ar_tls {TYPE_1__* current; } ;
typedef int * heim_object_t ;
typedef TYPE_1__* heim_auto_release_t ;
struct TYPE_2__ {int pool_mutex; int pool; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int HEIM_TAILQ_INSERT_HEAD (int *,struct heim_base*,int ) ;
 int HEIM_TAILQ_REMOVE (int *,struct heim_base*,int ) ;
 struct heim_base* PTR2BASE (int *) ;
 int autorel ;
 struct ar_tls* autorel_tls () ;
 int heim_abort (char*) ;
 scalar_t__ heim_base_is_tagged (int *) ;

void
heim_auto_release(heim_object_t ptr)
{
    struct heim_base *p = PTR2BASE(ptr);
    struct ar_tls *tls = autorel_tls();
    heim_auto_release_t ar;

    if (ptr == ((void*)0) || heim_base_is_tagged(ptr))
 return;


    if ((ar = p->autorelpool) != ((void*)0)) {
 HEIMDAL_MUTEX_lock(&ar->pool_mutex);
 HEIM_TAILQ_REMOVE(&ar->pool, p, autorel);
 p->autorelpool = ((void*)0);
 HEIMDAL_MUTEX_unlock(&ar->pool_mutex);
    }

    if (tls == ((void*)0) || (ar = tls->current) == ((void*)0))
 heim_abort("no auto relase pool in place, would leak");

    HEIMDAL_MUTEX_lock(&ar->pool_mutex);
    HEIM_TAILQ_INSERT_HEAD(&ar->pool, p, autorel);
    p->autorelpool = ar;
    HEIMDAL_MUTEX_unlock(&ar->pool_mutex);
}
