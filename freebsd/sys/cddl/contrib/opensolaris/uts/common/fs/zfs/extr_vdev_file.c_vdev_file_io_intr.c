
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;


 int zio_delay_interrupt (int *) ;

__attribute__((used)) static void
vdev_file_io_intr(zio_t *zio)
{
 zio_delay_interrupt(zio);
}
