
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kern_data_resid; int kern_data_ptr; } ;
struct TYPE_5__ {scalar_t__ io_type; scalar_t__ port_status; int status; int flags; } ;
union ctl_io {TYPE_2__ scsiio; TYPE_1__ io_hdr; } ;


 int CTL_DEBUG_CDB_DATA ;
 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ABORT ;
 int CTL_FLAG_ALLOCATED ;
 int CTL_FLAG_DATA_IN ;
 int CTL_FLAG_DATA_MASK ;
 int CTL_FLAG_DATA_OUT ;
 scalar_t__ CTL_IO_SCSI ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_STATUS_MASK ;
 int CTL_STATUS_NONE ;
 int CTL_SUCCESS ;
 int KASSERT (int,char*) ;
 int M_CTL ;
 int ctl_data_print (union ctl_io*) ;
 int ctl_debug ;
 int ctl_done (union ctl_io*) ;
 int ctl_scsiio (TYPE_2__*) ;
 int ctl_set_internal_failure (TYPE_2__*,int,scalar_t__) ;
 int ctl_set_invalid_field_ciu (TYPE_2__*) ;
 int free (int ,int ) ;

int
ctl_config_move_done(union ctl_io *io)
{
 int retval;

 CTL_DEBUG_PRINT(("ctl_config_move_done\n"));
 KASSERT(io->io_hdr.io_type == CTL_IO_SCSI,
     ("Config I/O type isn't CTL_IO_SCSI (%d)!", io->io_hdr.io_type));

 if ((io->io_hdr.port_status != 0) &&
     ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
      (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
  ctl_set_internal_failure(&io->scsiio, 1,
                      io->io_hdr.port_status);
 } else if (io->scsiio.kern_data_resid != 0 &&
     (io->io_hdr.flags & CTL_FLAG_DATA_MASK) == CTL_FLAG_DATA_OUT &&
     ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
      (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
  ctl_set_invalid_field_ciu(&io->scsiio);
 }

 if (ctl_debug & CTL_DEBUG_CDB_DATA)
  ctl_data_print(io);
 if (((io->io_hdr.flags & CTL_FLAG_DATA_MASK) == CTL_FLAG_DATA_IN) ||
     ((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE &&
      (io->io_hdr.status & CTL_STATUS_MASK) != CTL_SUCCESS) ||
     ((io->io_hdr.flags & CTL_FLAG_ABORT) != 0)) {





  if (io->io_hdr.flags & CTL_FLAG_ALLOCATED)
   free(io->scsiio.kern_data_ptr, M_CTL);
  ctl_done(io);
  retval = CTL_RETVAL_COMPLETE;
 } else {
  retval = ctl_scsiio(&io->scsiio);
 }
 return (retval);
}
