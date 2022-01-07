
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int awcb_private; int (* awcb_children_ready ) (TYPE_1__*,int *,int ) ;int * awcb_buf; } ;
typedef TYPE_2__ arc_write_callback_t ;
typedef int arc_buf_t ;


 int stub1 (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void
arc_write_children_ready(zio_t *zio)
{
 arc_write_callback_t *callback = zio->io_private;
 arc_buf_t *buf = callback->awcb_buf;

 callback->awcb_children_ready(zio, buf, callback->awcb_private);
}
