
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
struct ctl_be_block_io {int (* beio_cont ) (struct ctl_be_block_io*) ;union ctl_io* io; } ;


 int ctl_data_submit_done (union ctl_io*) ;
 int ctl_free_beio (struct ctl_be_block_io*) ;
 int stub1 (struct ctl_be_block_io*) ;

__attribute__((used)) static void
ctl_complete_beio(struct ctl_be_block_io *beio)
{
 union ctl_io *io = beio->io;

 if (beio->beio_cont != ((void*)0)) {
  beio->beio_cont(beio);
 } else {
  ctl_free_beio(beio);
  ctl_data_submit_done(io);
 }
}
