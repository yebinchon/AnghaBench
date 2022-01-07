
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v_read_priv; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int off_t ;


 int EIO ;
 int VDEV_PAD_SIZE ;
 int memset (char*,int ,int) ;
 int offsetof (int ,int ) ;
 int vdev_label_t ;
 scalar_t__ vdev_write (TYPE_1__*,int ,int ,char*,int) ;
 int vl_pad2 ;
 char* zap_scratch ;

__attribute__((used)) static int
vdev_clear_pad2(vdev_t *vdev)
{
 char *zeroes = zap_scratch;
 uint64_t *end;
 off_t off = offsetof(vdev_label_t, vl_pad2);

 memset(zeroes, 0, VDEV_PAD_SIZE);
 end = (uint64_t *)(zeroes + VDEV_PAD_SIZE);

 end[-5] = 0x0210da7ab10c7a11;
 end[-4] = 0x97f48f807f6e2a3f;
 end[-3] = 0xaf909f1658aacefc;
 end[-2] = 0xcbd1ea57ff6db48b;
 end[-1] = 0x6ec692db0d465fab;
 if (vdev_write(vdev, vdev->v_read_priv, off, zeroes, VDEV_PAD_SIZE))
  return (EIO);
 return (0);
}
