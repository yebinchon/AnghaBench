
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scsi_vpd_id_descriptor {int id_type; } ;


 int SVPD_ID_ASSOC_LUN ;
 int SVPD_ID_ASSOC_MASK ;
 int SVPD_ID_TYPE_MASK ;
 int SVPD_ID_TYPE_MD5_LUN_ID ;

int
scsi_devid_is_lun_md5(uint8_t *bufp)
{
 struct scsi_vpd_id_descriptor *descr;

 descr = (struct scsi_vpd_id_descriptor *)bufp;
 if ((descr->id_type & SVPD_ID_ASSOC_MASK) != SVPD_ID_ASSOC_LUN)
  return 0;
 if ((descr->id_type & SVPD_ID_TYPE_MASK) != SVPD_ID_TYPE_MD5_LUN_ID)
  return 0;
 return 1;
}
