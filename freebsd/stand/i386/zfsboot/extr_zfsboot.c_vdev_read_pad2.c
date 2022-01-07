
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int off_t ;
typedef int blkptr_t ;


 int BP_IDENTITY (int *) ;
 int BP_SET_CHECKSUM (int *,int ) ;
 int BP_SET_COMPRESS (int *,int ) ;
 int BP_SET_LSIZE (int *,size_t) ;
 int BP_SET_PSIZE (int *,size_t) ;
 int BP_ZERO (int *) ;
 int DVA_SET_OFFSET (int ,int ) ;
 int EIO ;
 size_t VDEV_PAD_SIZE ;
 int ZIO_CHECKSUM_LABEL ;
 int ZIO_COMPRESS_OFF ;
 int memcpy (char*,char*,size_t) ;
 int offsetof (int ,int ) ;
 int vdev_label_t ;
 scalar_t__ vdev_read_phys (int *,int *,char*,int ,int ) ;
 int vl_pad2 ;
 char* zap_scratch ;

__attribute__((used)) static int
vdev_read_pad2(vdev_t *vdev, char *buf, size_t size)
{
 blkptr_t bp;
 char *tmp = zap_scratch;
 off_t off = offsetof(vdev_label_t, vl_pad2);

 if (size > VDEV_PAD_SIZE)
  size = VDEV_PAD_SIZE;

 BP_ZERO(&bp);
 BP_SET_LSIZE(&bp, VDEV_PAD_SIZE);
 BP_SET_PSIZE(&bp, VDEV_PAD_SIZE);
 BP_SET_CHECKSUM(&bp, ZIO_CHECKSUM_LABEL);
 BP_SET_COMPRESS(&bp, ZIO_COMPRESS_OFF);
 DVA_SET_OFFSET(BP_IDENTITY(&bp), off);
 if (vdev_read_phys(vdev, &bp, tmp, off, 0))
  return (EIO);
 memcpy(buf, tmp, size);
 return (0);
}
