
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* io_child_error; scalar_t__ io_error; } ;
typedef TYPE_1__ zio_t ;
typedef enum zio_child { ____Placeholder_zio_child } zio_child ;



__attribute__((used)) static void
zio_inherit_child_errors(zio_t *zio, enum zio_child c)
{
 if (zio->io_child_error[c] != 0 && zio->io_error == 0)
  zio->io_error = zio->io_child_error[c];
}
