
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scsi_vpd_id_naa_ieee_reg {int dummy; } ;
struct scsi_vpd_id_naa_basic {int naa; } ;
struct scsi_vpd_id_descriptor {int id_type; int length; scalar_t__ identifier; } ;


 int SVPD_ID_NAA_IEEE_REG ;
 int SVPD_ID_NAA_LOCAL_REG ;
 int SVPD_ID_NAA_NAA_SHIFT ;
 int SVPD_ID_TYPE_MASK ;
 int SVPD_ID_TYPE_NAA ;

int
scsi_devid_is_naa_ieee_reg(uint8_t *bufp)
{
 struct scsi_vpd_id_descriptor *descr;
 struct scsi_vpd_id_naa_basic *naa;
 int n;

 descr = (struct scsi_vpd_id_descriptor *)bufp;
 naa = (struct scsi_vpd_id_naa_basic *)descr->identifier;
 if ((descr->id_type & SVPD_ID_TYPE_MASK) != SVPD_ID_TYPE_NAA)
  return 0;
 if (descr->length < sizeof(struct scsi_vpd_id_naa_ieee_reg))
  return 0;
 n = naa->naa >> SVPD_ID_NAA_NAA_SHIFT;
 if (n != SVPD_ID_NAA_LOCAL_REG && n != SVPD_ID_NAA_IEEE_REG)
  return 0;
 return 1;
}
