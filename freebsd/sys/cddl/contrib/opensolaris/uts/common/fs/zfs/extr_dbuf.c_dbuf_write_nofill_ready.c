
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_private; } ;
typedef TYPE_1__ zio_t ;


 int dbuf_write_ready (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void
dbuf_write_nofill_ready(zio_t *zio)
{
 dbuf_write_ready(zio, ((void*)0), zio->io_private);
}
