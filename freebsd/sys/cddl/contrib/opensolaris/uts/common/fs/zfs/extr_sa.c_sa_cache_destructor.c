
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;


 int mutex_destroy (int *) ;

__attribute__((used)) static void
sa_cache_destructor(void *buf, void *unused)
{
 sa_handle_t *hdl = buf;
 mutex_destroy(&hdl->sa_lock);
}
