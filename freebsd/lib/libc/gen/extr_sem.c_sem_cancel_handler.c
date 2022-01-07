
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ nwaiters; } ;


 int _umtx_wake (scalar_t__*) ;
 int atomic_add_int (scalar_t__*,int) ;

__attribute__((used)) static void
sem_cancel_handler(void *arg)
{
 sem_t *sem = arg;

 atomic_add_int(&(*sem)->nwaiters, -1);
 if ((*sem)->nwaiters && (*sem)->count)
  _umtx_wake(&(*sem)->count);
}
