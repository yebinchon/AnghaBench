
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct heim_auto_release {int dummy; } ;
struct ar_tls {int tls_mutex; TYPE_1__* current; TYPE_1__* head; } ;
typedef TYPE_1__* heim_auto_release_t ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 TYPE_1__* _heim_alloc_object (int *,int) ;
 int _heim_autorel_object ;
 struct ar_tls* autorel_tls () ;
 int heim_abort (char*) ;

heim_auto_release_t
heim_auto_release_create(void)
{
    struct ar_tls *tls = autorel_tls();
    heim_auto_release_t ar;

    if (tls == ((void*)0))
 heim_abort("Failed to create/get autorelease head");

    ar = _heim_alloc_object(&_heim_autorel_object, sizeof(struct heim_auto_release));
    if (ar) {
 HEIMDAL_MUTEX_lock(&tls->tls_mutex);
 if (tls->head == ((void*)0))
     tls->head = ar;
 ar->parent = tls->current;
 tls->current = ar;
 HEIMDAL_MUTEX_unlock(&tls->tls_mutex);
    }

    return ar;
}
