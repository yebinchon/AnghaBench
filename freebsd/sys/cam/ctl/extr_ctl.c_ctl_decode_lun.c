
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;




 int RPL_LUNDATA_ATYP_MASK ;

 int RPL_LUNDATA_EXT_EAM_MASK ;

 int RPL_LUNDATA_EXT_LEN_MASK ;
 int be64enc (int*,int ) ;

uint32_t
ctl_decode_lun(uint64_t encoded)
{
 uint8_t lun[8];
 uint32_t result = 0xffffffff;

 be64enc(lun, encoded);
 switch (lun[0] & RPL_LUNDATA_ATYP_MASK) {
 case 129:
  if ((lun[0] & 0x3f) == 0 && lun[2] == 0 && lun[3] == 0 &&
      lun[4] == 0 && lun[5] == 0 && lun[6] == 0 && lun[7] == 0)
   result = lun[1];
  break;
 case 130:
  if (lun[2] == 0 && lun[3] == 0 && lun[4] == 0 && lun[5] == 0 &&
      lun[6] == 0 && lun[7] == 0)
   result = ((lun[0] & 0x3f) << 8) + lun[1];
  break;
 case 131:
  switch (lun[0] & RPL_LUNDATA_EXT_EAM_MASK) {
  case 0x02:
   switch (lun[0] & RPL_LUNDATA_EXT_LEN_MASK) {
   case 0x00:
    result = lun[1];
    break;
   case 0x10:
    result = (lun[1] << 16) + (lun[2] << 8) +
        lun[3];
    break;
   case 0x20:
    if (lun[1] == 0 && lun[6] == 0 && lun[7] == 0)
     result = (lun[2] << 24) +
         (lun[3] << 16) + (lun[4] << 8) +
         lun[5];
    break;
   }
   break;
  case 128:
   result = 0xffffffff;
   break;
  }
  break;
 }
 return (result);
}
