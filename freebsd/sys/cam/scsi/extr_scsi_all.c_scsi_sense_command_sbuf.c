
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_desc_header {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_sense_command {int command_info; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int scsi_8btou64 (int ) ;
 int scsi_command_sbuf (struct sbuf*,int *,int,struct scsi_inquiry_data*,int ) ;

void
scsi_sense_command_sbuf(struct sbuf *sb, struct scsi_sense_data *sense,
   u_int sense_len, uint8_t *cdb, int cdb_len,
   struct scsi_inquiry_data *inq_data,
   struct scsi_sense_desc_header *header)
{
 struct scsi_sense_command *command;

 command = (struct scsi_sense_command *)header;

 scsi_command_sbuf(sb, cdb, cdb_len, inq_data,
     scsi_8btou64(command->command_info));
}
