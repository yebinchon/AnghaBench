
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;


 int ZIO_SET_CHECKSUM (int *,int ,int ,int ,int ) ;

void
fletcher_init(zio_cksum_t *zcp)
{
 ZIO_SET_CHECKSUM(zcp, 0, 0, 0, 0);
}
