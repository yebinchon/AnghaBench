
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;


 int ASSERT (int) ;
 int ZIO_CHECKSUM_FUNCTIONS ;
 int ZIO_CHECKSUM_INHERIT ;
 int ZIO_CHECKSUM_ON ;
 int ZIO_CHECKSUM_ON_VALUE ;

enum zio_checksum
zio_checksum_select(enum zio_checksum child, enum zio_checksum parent)
{
 ASSERT(child < ZIO_CHECKSUM_FUNCTIONS);
 ASSERT(parent < ZIO_CHECKSUM_FUNCTIONS);
 ASSERT(parent != ZIO_CHECKSUM_INHERIT && parent != ZIO_CHECKSUM_ON);

 if (child == ZIO_CHECKSUM_INHERIT)
  return (parent);

 if (child == ZIO_CHECKSUM_ON)
  return (ZIO_CHECKSUM_ON_VALUE);

 return (child);
}
