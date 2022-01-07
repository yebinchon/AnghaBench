
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ar_tls {void* current; void* head; int tls_mutex; } ;
typedef TYPE_1__* heim_auto_release_t ;
struct TYPE_3__ {void* parent; int pool; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int HEIM_TAILQ_EMPTY (int *) ;
 struct ar_tls* autorel_tls () ;
 int heim_abort (char*) ;
 int heim_auto_release_drain (TYPE_1__*) ;

__attribute__((used)) static void
autorel_dealloc(void *ptr)
{
    heim_auto_release_t ar = ptr;
    struct ar_tls *tls;

    tls = autorel_tls();
    if (tls == ((void*)0))
 heim_abort("autorelease pool released on thread w/o autorelease inited");

    heim_auto_release_drain(ar);

    if (!HEIM_TAILQ_EMPTY(&ar->pool))
 heim_abort("pool not empty after draining");

    HEIMDAL_MUTEX_lock(&tls->tls_mutex);
    if (tls->current != ptr)
 heim_abort("autorelease not releaseing top pool");

    if (tls->current != tls->head)
 tls->current = ar->parent;
    HEIMDAL_MUTEX_unlock(&tls->tls_mutex);
}
