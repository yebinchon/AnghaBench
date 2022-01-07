
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint64_t ;


 int ZIO_SET_CHECKSUM (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
zio_checksum_label_verifier(zio_cksum_t *zcp, uint64_t offset)
{
 ZIO_SET_CHECKSUM(zcp, offset, 0, 0, 0);
}
