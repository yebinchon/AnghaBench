
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_info {int byte2; int info; } ;
struct scsi_sense_desc_header {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int SSD_INFO_VALID ;
 int scsi_8btou64 (int ) ;
 int scsi_info_sbuf (struct sbuf*,int *,int,struct scsi_inquiry_data*,int ) ;

void
scsi_sense_info_sbuf(struct sbuf *sb, struct scsi_sense_data *sense,
       u_int sense_len, uint8_t *cdb, int cdb_len,
       struct scsi_inquiry_data *inq_data,
       struct scsi_sense_desc_header *header)
{
 struct scsi_sense_info *info;

 info = (struct scsi_sense_info *)header;

 if ((info->byte2 & SSD_INFO_VALID) == 0)
  return;

 scsi_info_sbuf(sb, cdb, cdb_len, inq_data, scsi_8btou64(info->info));
}
