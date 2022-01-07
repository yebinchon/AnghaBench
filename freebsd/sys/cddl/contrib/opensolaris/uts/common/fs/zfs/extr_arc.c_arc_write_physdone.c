
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int awcb_private; int awcb_buf; int (* awcb_physdone ) (TYPE_1__*,int ,int ) ;} ;
typedef TYPE_2__ arc_write_callback_t ;


 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
arc_write_physdone(zio_t *zio)
{
 arc_write_callback_t *cb = zio->io_private;
 if (cb->awcb_physdone != ((void*)0))
  cb->awcb_physdone(zio, cb->awcb_buf, cb->awcb_private);
}
