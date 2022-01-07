
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ io_type; scalar_t__ io_error; int io_size; int io_abd; int io_offset; TYPE_2__* io_vd; } ;
typedef TYPE_1__ zio_t ;
typedef int vnode_t ;
struct TYPE_6__ {TYPE_3__* vdev_tsd; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_7__ {int * vf_vnode; } ;
typedef TYPE_3__ vdev_file_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ ENOSPC ;
 int RLIM64_INFINITY ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 scalar_t__ ZIO_TYPE_READ ;
 scalar_t__ ZIO_TYPE_WRITE ;
 void* abd_borrow_buf (int ,int ) ;
 void* abd_borrow_buf_copy (int ,int ) ;
 int abd_return_buf (int ,void*,int ) ;
 int abd_return_buf_copy (int ,void*,int ) ;
 int kcred ;
 int vdev_file_io_intr (TYPE_1__*) ;
 scalar_t__ vn_rdwr (int ,int *,void*,int ,int ,int ,int ,int ,int ,scalar_t__*) ;

__attribute__((used)) static void
vdev_file_io_strategy(void *arg)
{
 zio_t *zio = arg;
 vdev_t *vd = zio->io_vd;
 vdev_file_t *vf;
 vnode_t *vp;
 void *addr;
 ssize_t resid;

 vf = vd->vdev_tsd;
 vp = vf->vf_vnode;

 ASSERT(zio->io_type == ZIO_TYPE_READ || zio->io_type == ZIO_TYPE_WRITE);
 if (zio->io_type == ZIO_TYPE_READ) {
  addr = abd_borrow_buf(zio->io_abd, zio->io_size);
 } else {
  addr = abd_borrow_buf_copy(zio->io_abd, zio->io_size);
 }

 zio->io_error = vn_rdwr(zio->io_type == ZIO_TYPE_READ ?
     UIO_READ : UIO_WRITE, vp, addr, zio->io_size,
     zio->io_offset, UIO_SYSSPACE, 0, RLIM64_INFINITY, kcred, &resid);

 if (zio->io_type == ZIO_TYPE_READ) {
  abd_return_buf_copy(zio->io_abd, addr, zio->io_size);
 } else {
  abd_return_buf(zio->io_abd, addr, zio->io_size);
 }

 if (resid != 0 && zio->io_error == 0)
  zio->io_error = ENOSPC;

 vdev_file_io_intr(zio);
}
