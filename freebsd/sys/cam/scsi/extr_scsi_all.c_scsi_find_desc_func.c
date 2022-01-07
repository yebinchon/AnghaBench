
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct scsi_sense_desc_header {scalar_t__ desc_type; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_find_desc_info {scalar_t__ desc_type; struct scsi_sense_desc_header* header; } ;



__attribute__((used)) static int
scsi_find_desc_func(struct scsi_sense_data_desc *sense, u_int sense_len,
      struct scsi_sense_desc_header *header, void *arg)
{
 struct scsi_find_desc_info *desc_info;

 desc_info = (struct scsi_find_desc_info *)arg;

 if (header->desc_type == desc_info->desc_type) {
  desc_info->header = header;


  return (1);
 } else
  return (0);
}
