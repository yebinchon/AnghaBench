
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* ci_tmpl_free ) (int *) ;} ;
typedef TYPE_1__ zio_checksum_info_t ;
struct TYPE_6__ {int ** spa_cksum_tmpls; } ;
typedef TYPE_2__ spa_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;


 int VERIFY (int ) ;
 int ZIO_CHECKSUM_FUNCTIONS ;
 int stub1 (int *) ;
 TYPE_1__* zio_checksum_table ;

void
zio_checksum_templates_free(spa_t *spa)
{
 for (enum zio_checksum checksum = 0;
     checksum < ZIO_CHECKSUM_FUNCTIONS; checksum++) {
  if (spa->spa_cksum_tmpls[checksum] != ((void*)0)) {
   zio_checksum_info_t *ci = &zio_checksum_table[checksum];

   VERIFY(ci->ci_tmpl_free != ((void*)0));
   ci->ci_tmpl_free(spa->spa_cksum_tmpls[checksum]);
   spa->spa_cksum_tmpls[checksum] = ((void*)0);
  }
 }
}
