
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;
struct ctl_scsiio {int * cdb; } ;
typedef int cdb_str ;


 int SCSI_MAX_CDBLEN ;
 int sbuf_printf (struct sbuf*,char*,int ,int ) ;
 int scsi_cdb_string (int *,char*,int) ;
 int scsi_op_desc (int ,struct scsi_inquiry_data*) ;

int
ctl_scsi_command_string(struct ctl_scsiio *ctsio,
   struct scsi_inquiry_data *inq_data, struct sbuf *sb)
{
 char cdb_str[(SCSI_MAX_CDBLEN * 3) + 1];

 sbuf_printf(sb, "%s. CDB: %s",
      scsi_op_desc(ctsio->cdb[0], inq_data),
      scsi_cdb_string(ctsio->cdb, cdb_str, sizeof(cdb_str)));

 return(0);
}
