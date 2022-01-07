
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t zio_type_t ;
typedef size_t zio_taskq_type_t ;
struct TYPE_5__ {TYPE_3__* io_spa; int * io_executor; } ;
typedef TYPE_1__ zio_t ;
typedef size_t uint_t ;
struct TYPE_6__ {size_t stqs_count; int * stqs_taskq; } ;
typedef TYPE_2__ spa_taskqs_t ;
struct TYPE_7__ {TYPE_2__** spa_zio_taskq; } ;
typedef TYPE_3__ spa_t ;
typedef int kthread_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 size_t ZIO_TYPES ;
 scalar_t__ taskq_member (int ,int *) ;

__attribute__((used)) static boolean_t
zio_taskq_member(zio_t *zio, zio_taskq_type_t q)
{
 kthread_t *executor = zio->io_executor;
 spa_t *spa = zio->io_spa;

 for (zio_type_t t = 0; t < ZIO_TYPES; t++) {
  spa_taskqs_t *tqs = &spa->spa_zio_taskq[t][q];
  uint_t i;
  for (i = 0; i < tqs->stqs_count; i++) {
   if (taskq_member(tqs->stqs_taskq[i], executor))
    return (B_TRUE);
  }
 }

 return (B_FALSE);
}
