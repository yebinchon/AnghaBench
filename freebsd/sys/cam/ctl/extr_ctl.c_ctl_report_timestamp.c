
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct scsi_report_timestamp_data {int * timestamp; int origin; int * length; } ;
struct scsi_report_timestamp {int length; } ;
struct TYPE_2__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int kern_data_len; int kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;
typedef int int64_t ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ALLOCATED ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int RTS_ORIG_OUTSIDE ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int getmicrotime (struct timeval*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_4btoul (int ) ;
 int scsi_ulto2b (int,int *) ;
 int scsi_ulto4b (int,int *) ;

int
ctl_report_timestamp(struct ctl_scsiio *ctsio)
{
 struct scsi_report_timestamp *cdb;
 struct scsi_report_timestamp_data *data;
 struct timeval tv;
 int64_t timestamp;
 int retval;
 int alloc_len, total_len;

 CTL_DEBUG_PRINT(("ctl_report_timestamp\n"));

 cdb = (struct scsi_report_timestamp *)ctsio->cdb;

 retval = CTL_RETVAL_COMPLETE;

 total_len = sizeof(struct scsi_report_timestamp_data);
 alloc_len = scsi_4btoul(cdb->length);

 ctsio->kern_data_ptr = malloc(total_len, M_CTL, M_WAITOK | M_ZERO);
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_data_len = min(total_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;

 data = (struct scsi_report_timestamp_data *)ctsio->kern_data_ptr;
 scsi_ulto2b(sizeof(*data) - 2, data->length);
 data->origin = RTS_ORIG_OUTSIDE;
 getmicrotime(&tv);
 timestamp = (int64_t)tv.tv_sec * 1000 + tv.tv_usec / 1000;
 scsi_ulto4b(timestamp >> 16, data->timestamp);
 scsi_ulto2b(timestamp & 0xffff, &data->timestamp[4]);

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (retval);
}
