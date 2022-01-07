
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_vpd_id_descriptor {int dummy; } ;
struct scsi_vpd_device_id {scalar_t__ desc_list; int length; } ;
typedef int scsi_devid_checkfn_t ;


 int MIN (int ,int) ;
 int scsi_2btoul (int ) ;
 struct scsi_vpd_id_descriptor* scsi_get_devid_desc (struct scsi_vpd_id_descriptor*,int,int ) ;

struct scsi_vpd_id_descriptor *
scsi_get_devid(struct scsi_vpd_device_id *id, uint32_t page_len,
    scsi_devid_checkfn_t ck_fn)
{
 uint32_t len;

 if (page_len < sizeof(*id))
  return (((void*)0));
 len = MIN(scsi_2btoul(id->length), page_len - sizeof(*id));
 return (scsi_get_devid_desc((struct scsi_vpd_id_descriptor *)
     id->desc_list, len, ck_fn));
}
