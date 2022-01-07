
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
__attribute__((used)) static const char *
xpt_async_string(u_int32_t async_code)
{

 switch (async_code) {
 case 140: return ("AC_BUS_RESET");
 case 128: return ("AC_UNSOL_RESEL");
 case 132: return ("AC_SCSI_AEN");
 case 131: return ("AC_SENT_BDR");
 case 133: return ("AC_PATH_REGISTERED");
 case 134: return ("AC_PATH_DEREGISTERED");
 case 138: return ("AC_FOUND_DEVICE");
 case 135: return ("AC_LOST_DEVICE");
 case 130: return ("AC_TRANSFER_NEG");
 case 136: return ("AC_INQ_CHANGED");
 case 137: return ("AC_GETDEV_CHANGED");
 case 139: return ("AC_CONTRACT");
 case 141: return ("AC_ADVINFO_CHANGED");
 case 129: return ("AC_UNIT_ATTENTION");
 }
 return ("AC_UNKNOWN");
}
