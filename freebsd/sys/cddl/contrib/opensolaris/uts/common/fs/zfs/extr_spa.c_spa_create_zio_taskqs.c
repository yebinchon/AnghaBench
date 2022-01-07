
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int ZIO_TASKQ_TYPES ;
 int ZIO_TYPES ;
 int spa_taskqs_init (int *,int,int) ;

__attribute__((used)) static void
spa_create_zio_taskqs(spa_t *spa)
{
 for (int t = 0; t < ZIO_TYPES; t++) {
  for (int q = 0; q < ZIO_TASKQ_TYPES; q++) {
   spa_taskqs_init(spa, t, q);
  }
 }
}
