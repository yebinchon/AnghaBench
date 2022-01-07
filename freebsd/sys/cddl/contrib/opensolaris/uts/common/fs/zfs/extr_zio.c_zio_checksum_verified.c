
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_pipeline; } ;
typedef TYPE_1__ zio_t ;


 int ZIO_STAGE_CHECKSUM_VERIFY ;

void
zio_checksum_verified(zio_t *zio)
{
 zio->io_pipeline &= ~ZIO_STAGE_CHECKSUM_VERIFY;
}
