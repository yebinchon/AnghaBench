
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scsi_vpd_id_descriptor {int id_type; int proto_codeset; } ;


 int SCSI_PROTO_SAS ;
 int SVPD_ID_PIV ;
 int SVPD_ID_PROTO_SHIFT ;
 int scsi_devid_is_naa_ieee_reg (int *) ;

int
scsi_devid_is_sas_target(uint8_t *bufp)
{
 struct scsi_vpd_id_descriptor *descr;

 descr = (struct scsi_vpd_id_descriptor *)bufp;
 if (!scsi_devid_is_naa_ieee_reg(bufp))
  return 0;
 if ((descr->id_type & SVPD_ID_PIV) == 0)
  return 0;
 if ((descr->proto_codeset >> SVPD_ID_PROTO_SHIFT) != SCSI_PROTO_SAS)
  return 0;
 return 1;
}
