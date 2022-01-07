
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_find_desc_info {int * header; int desc_type; } ;


 int scsi_desc_iterate (struct scsi_sense_data_desc*,int ,int ,struct scsi_find_desc_info*) ;
 int scsi_find_desc_func ;

uint8_t *
scsi_find_desc(struct scsi_sense_data_desc *sense, u_int sense_len,
        uint8_t desc_type)
{
 struct scsi_find_desc_info desc_info;

 desc_info.desc_type = desc_type;
 desc_info.header = ((void*)0);

 scsi_desc_iterate(sense, sense_len, scsi_find_desc_func, &desc_info);

 return ((uint8_t *)desc_info.header);
}
