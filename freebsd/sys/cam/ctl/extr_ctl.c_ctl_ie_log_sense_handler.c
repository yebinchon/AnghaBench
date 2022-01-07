
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_log_param_header {int dummy; } ;
struct TYPE_3__ {int param_len; int param_control; int param_code; } ;
struct scsi_log_informational_exceptions {int temperature; int ie_ascq; int ie_asc; TYPE_1__ hdr; } ;
struct ctl_scsiio {int dummy; } ;
struct ctl_page_index {scalar_t__ page_data; } ;
struct ctl_lun {TYPE_2__* be_lun; int ie_ascq; int ie_asc; } ;
struct TYPE_4__ {int options; } ;


 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int SLP_IE_GEN ;
 int SLP_LBIN ;
 char* dnvlist_get_string (int ,char*,int *) ;
 int scsi_ulto2b (int ,int ) ;
 int strtol (char const*,int *,int ) ;

int
ctl_ie_log_sense_handler(struct ctl_scsiio *ctsio,
          struct ctl_page_index *page_index,
          int pc)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_log_informational_exceptions *data;
 const char *value;

 data = (struct scsi_log_informational_exceptions *)page_index->page_data;

 scsi_ulto2b(SLP_IE_GEN, data->hdr.param_code);
 data->hdr.param_control = SLP_LBIN;
 data->hdr.param_len = sizeof(struct scsi_log_informational_exceptions) -
     sizeof(struct scsi_log_param_header);
 data->ie_asc = lun->ie_asc;
 data->ie_ascq = lun->ie_ascq;
 if ((value = dnvlist_get_string(lun->be_lun->options, "temperature",
     ((void*)0))) != ((void*)0))
  data->temperature = strtol(value, ((void*)0), 0);
 else
  data->temperature = 0xff;
 return (0);
}
