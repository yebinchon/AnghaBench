
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct scsi_sense_desc_header {int desc_type; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_print_sense_info {int sb; int inq_data; int cdb_len; int cdb; int path_str; } ;
 int sbuf_printf (int ,char*,...) ;
 int scsi_sense_desc_sbuf (int ,struct scsi_sense_data*,int ,int ,int ,int ,struct scsi_sense_desc_header*) ;

__attribute__((used)) static int
scsi_print_desc_func(struct scsi_sense_data_desc *sense, u_int sense_len,
       struct scsi_sense_desc_header *header, void *arg)
{
 struct scsi_print_sense_info *print_info;

 print_info = (struct scsi_print_sense_info *)arg;

 switch (header->desc_type) {
 case 130:
 case 131:
 case 132:
 case 129:
 case 133:
 case 128:




  break;
 default: {
  sbuf_printf(print_info->sb, "%s", print_info->path_str);
  scsi_sense_desc_sbuf(print_info->sb,
         (struct scsi_sense_data *)sense, sense_len,
         print_info->cdb, print_info->cdb_len,
         print_info->inq_data, header);
  sbuf_printf(print_info->sb, "\n");
  break;
 }
 }





 return (0);
}
