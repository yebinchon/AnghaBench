
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
typedef TYPE_1__ Lock ;


 int free (int ) ;

__attribute__((used)) static void
def_lock_destroy(void *lock)
{
    Lock *l = (Lock *)lock;

    free(l->base);
}
