
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * spa_ddt; int spa_dedup_checksum; } ;
typedef TYPE_1__ spa_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;


 int ZIO_CHECKSUM_FUNCTIONS ;
 int ZIO_DEDUPCHECKSUM ;
 int ddt_table_alloc (TYPE_1__*,int) ;

void
ddt_create(spa_t *spa)
{
 spa->spa_dedup_checksum = ZIO_DEDUPCHECKSUM;

 for (enum zio_checksum c = 0; c < ZIO_CHECKSUM_FUNCTIONS; c++)
  spa->spa_ddt[c] = ddt_table_alloc(spa, c);
}
