
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_4__ {scalar_t__ magic; } ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
sem_free(sem_t sem)
{

 sem->magic = 0;
 free(sem);
}
