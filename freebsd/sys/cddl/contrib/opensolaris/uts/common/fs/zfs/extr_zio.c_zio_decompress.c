
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_error; int io_size; int io_abd; int io_bp; } ;
typedef TYPE_1__ zio_t ;
typedef int uint64_t ;
typedef int abd_t ;


 int BP_GET_COMPRESS (int ) ;
 int EIO ;
 scalar_t__ SET_ERROR (int ) ;
 void* abd_borrow_buf (int *,int ) ;
 int abd_return_buf_copy (int *,void*,int ) ;
 int zio_decompress_data (int ,int ,void*,int ,int ) ;

__attribute__((used)) static void
zio_decompress(zio_t *zio, abd_t *data, uint64_t size)
{
 if (zio->io_error == 0) {
  void *tmp = abd_borrow_buf(data, size);
  int ret = zio_decompress_data(BP_GET_COMPRESS(zio->io_bp),
      zio->io_abd, tmp, zio->io_size, size);
  abd_return_buf_copy(data, tmp, size);

  if (ret != 0)
   zio->io_error = SET_ERROR(EIO);
 }
}
