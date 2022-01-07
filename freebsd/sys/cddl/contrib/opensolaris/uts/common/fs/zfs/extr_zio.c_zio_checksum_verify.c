
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ zp_checksum; } ;
struct TYPE_8__ {int io_error; int io_flags; int io_size; int io_offset; int * io_vd; int io_spa; TYPE_1__ io_prop; int * io_bp; } ;
typedef TYPE_2__ zio_t ;
typedef int zio_bad_cksum_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int ECKSUM ;
 scalar_t__ ZIO_CHECKSUM_LABEL ;
 scalar_t__ ZIO_CHECKSUM_OFF ;
 int ZIO_FLAG_SPECULATIVE ;
 int zfs_ereport_start_checksum (int ,int *,TYPE_2__*,int ,int ,int *,int *) ;
 int zio_checksum_error (TYPE_2__*,int *) ;

__attribute__((used)) static zio_t *
zio_checksum_verify(zio_t *zio)
{
 zio_bad_cksum_t info;
 blkptr_t *bp = zio->io_bp;
 int error;

 ASSERT(zio->io_vd != ((void*)0));

 if (bp == ((void*)0)) {




  if (zio->io_prop.zp_checksum == ZIO_CHECKSUM_OFF)
   return (zio);

  ASSERT(zio->io_prop.zp_checksum == ZIO_CHECKSUM_LABEL);
 }

 if ((error = zio_checksum_error(zio, &info)) != 0) {
  zio->io_error = error;
  if (error == ECKSUM &&
      !(zio->io_flags & ZIO_FLAG_SPECULATIVE)) {
   zfs_ereport_start_checksum(zio->io_spa,
       zio->io_vd, zio, zio->io_offset,
       zio->io_size, ((void*)0), &info);
  }
 }

 return (zio);
}
