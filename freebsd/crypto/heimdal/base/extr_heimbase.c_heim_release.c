
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct heim_base {scalar_t__ ref_cnt; TYPE_1__* isa; TYPE_2__* autorelpool; } ;
typedef int heim_base_atomic_type ;
typedef TYPE_2__* heim_auto_release_t ;
struct TYPE_4__ {int pool_mutex; int pool; } ;
struct TYPE_3__ {int (* dealloc ) (void*) ;} ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int HEIM_TAILQ_REMOVE (int *,struct heim_base*,int ) ;
 struct heim_base* PTR2BASE (void*) ;
 int autorel ;
 int free (struct heim_base*) ;
 int heim_abort (char*) ;
 int heim_base_atomic_dec (scalar_t__*) ;
 scalar_t__ heim_base_atomic_max ;
 scalar_t__ heim_base_is_tagged (void*) ;
 int stub1 (void*) ;

void
heim_release(void *ptr)
{
    heim_base_atomic_type old;
    struct heim_base *p = PTR2BASE(ptr);

    if (ptr == ((void*)0) || heim_base_is_tagged(ptr))
 return;

    if (p->ref_cnt == heim_base_atomic_max)
 return;

    old = heim_base_atomic_dec(&p->ref_cnt) + 1;

    if (old > 1)
 return;

    if (old == 1) {
 heim_auto_release_t ar = p->autorelpool;

 if (ar) {
     p->autorelpool = ((void*)0);
     HEIMDAL_MUTEX_lock(&ar->pool_mutex);
     HEIM_TAILQ_REMOVE(&ar->pool, p, autorel);
     HEIMDAL_MUTEX_unlock(&ar->pool_mutex);
 }
 if (p->isa->dealloc)
     p->isa->dealloc(ptr);
 free(p);
    } else
 heim_abort("over release");
}
