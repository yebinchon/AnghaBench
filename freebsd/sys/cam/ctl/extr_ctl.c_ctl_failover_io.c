
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ctl_io {int scsiio; } ;


 int ctl_done (union ctl_io*) ;
 int ctl_set_busy (int *) ;

__attribute__((used)) static void
ctl_failover_io(union ctl_io *io, int have_lock)
{
 ctl_set_busy(&io->scsiio);
 ctl_done(io);
}
