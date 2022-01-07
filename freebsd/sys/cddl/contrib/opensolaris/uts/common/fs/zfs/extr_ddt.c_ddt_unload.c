
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** spa_ddt; } ;
typedef TYPE_1__ spa_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;


 int ZIO_CHECKSUM_FUNCTIONS ;
 int ddt_table_free (int *) ;

void
ddt_unload(spa_t *spa)
{
 for (enum zio_checksum c = 0; c < ZIO_CHECKSUM_FUNCTIONS; c++) {
  if (spa->spa_ddt[c]) {
   ddt_table_free(spa->spa_ddt[c]);
   spa->spa_ddt[c] = ((void*)0);
  }
 }
}
