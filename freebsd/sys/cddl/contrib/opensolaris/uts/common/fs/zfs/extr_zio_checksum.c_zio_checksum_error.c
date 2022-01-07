
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zp_checksum; } ;
struct TYPE_9__ {scalar_t__ io_error; int * io_spa; int * io_abd; int io_offset; int io_size; TYPE_1__ io_prop; int * io_bp; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_10__ {int zbc_injected; } ;
typedef TYPE_3__ zio_bad_cksum_t ;
typedef int uint_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int blkptr_t ;
typedef int abd_t ;


 int BP_GET_CHECKSUM (int *) ;
 int BP_GET_PSIZE (int *) ;
 scalar_t__ BP_IS_GANG (int *) ;
 int ECKSUM ;
 int SPA_GANGBLOCKSIZE ;
 int ZIO_CHECKSUM_GANG_HEADER ;
 int zio_checksum_error_impl (int *,int *,int ,int *,int ,int ,TYPE_3__*) ;
 int zio_handle_fault_injection (TYPE_2__*,int ) ;
 scalar_t__ zio_injection_enabled ;

int
zio_checksum_error(zio_t *zio, zio_bad_cksum_t *info)
{
 blkptr_t *bp = zio->io_bp;
 uint_t checksum = (bp == ((void*)0) ? zio->io_prop.zp_checksum :
     (BP_IS_GANG(bp) ? ZIO_CHECKSUM_GANG_HEADER : BP_GET_CHECKSUM(bp)));
 int error;
 uint64_t size = (bp == ((void*)0) ? zio->io_size :
     (BP_IS_GANG(bp) ? SPA_GANGBLOCKSIZE : BP_GET_PSIZE(bp)));
 uint64_t offset = zio->io_offset;
 abd_t *data = zio->io_abd;
 spa_t *spa = zio->io_spa;

 error = zio_checksum_error_impl(spa, bp, checksum, data, size,
     offset, info);

 if (zio_injection_enabled && error == 0 && zio->io_error == 0) {
  error = zio_handle_fault_injection(zio, ECKSUM);
  if (error != 0)
   info->zbc_injected = 1;
 }

 return (error);
}
