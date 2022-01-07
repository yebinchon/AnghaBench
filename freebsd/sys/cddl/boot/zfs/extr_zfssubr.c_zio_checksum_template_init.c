
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * (* ci_tmpl_init ) (int *) ;} ;
typedef TYPE_1__ zio_checksum_info_t ;
struct TYPE_6__ {int spa_cksum_salt; int ** spa_cksum_tmpls; } ;
typedef TYPE_2__ spa_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;


 int * stub1 (int *) ;
 TYPE_1__* zio_checksum_table ;

__attribute__((used)) static void
zio_checksum_template_init(enum zio_checksum checksum, spa_t *spa)
{
 zio_checksum_info_t *ci = &zio_checksum_table[checksum];

 if (ci->ci_tmpl_init == ((void*)0))
  return;

 if (spa->spa_cksum_tmpls[checksum] != ((void*)0))
  return;

 if (spa->spa_cksum_tmpls[checksum] == ((void*)0)) {
  spa->spa_cksum_tmpls[checksum] =
      ci->ci_tmpl_init(&spa->spa_cksum_salt);
 }
}
