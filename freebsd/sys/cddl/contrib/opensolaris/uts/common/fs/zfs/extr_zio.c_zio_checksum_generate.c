
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zp_checksum; } ;
struct TYPE_8__ {scalar_t__ io_child_type; int io_size; int io_abd; TYPE_1__ io_prop; int * io_bp; } ;
typedef TYPE_2__ zio_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_CHECKSUM (int *) ;
 scalar_t__ BP_IS_GANG (int *) ;
 int IO_IS_ALLOCATING (TYPE_2__*) ;
 int ZIO_CHECKSUM_GANG_HEADER ;
 int ZIO_CHECKSUM_LABEL ;
 int ZIO_CHECKSUM_OFF ;
 scalar_t__ ZIO_CHILD_GANG ;
 int zio_checksum_compute (TYPE_2__*,int,int ,int ) ;

__attribute__((used)) static zio_t *
zio_checksum_generate(zio_t *zio)
{
 blkptr_t *bp = zio->io_bp;
 enum zio_checksum checksum;

 if (bp == ((void*)0)) {




  checksum = zio->io_prop.zp_checksum;

  if (checksum == ZIO_CHECKSUM_OFF)
   return (zio);

  ASSERT(checksum == ZIO_CHECKSUM_LABEL);
 } else {
  if (BP_IS_GANG(bp) && zio->io_child_type == ZIO_CHILD_GANG) {
   ASSERT(!IO_IS_ALLOCATING(zio));
   checksum = ZIO_CHECKSUM_GANG_HEADER;
  } else {
   checksum = BP_GET_CHECKSUM(bp);
  }
 }

 zio_checksum_compute(zio, checksum, zio->io_abd, zio->io_size);

 return (zio);
}
