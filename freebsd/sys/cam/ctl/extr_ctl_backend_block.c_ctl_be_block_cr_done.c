
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
struct ctl_be_block_io {union ctl_io* io; } ;


 int ctl_config_read_done (union ctl_io*) ;
 int ctl_free_beio (struct ctl_be_block_io*) ;

__attribute__((used)) static void
ctl_be_block_cr_done(struct ctl_be_block_io *beio)
{
 union ctl_io *io;

 io = beio->io;
 ctl_free_beio(beio);
 ctl_config_read_done(io);
}
