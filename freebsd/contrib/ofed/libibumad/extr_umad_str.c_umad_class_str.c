
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int UMAD_CLASS_APPLICATION_END ;
 int UMAD_CLASS_APPLICATION_START ;
 int UMAD_CLASS_VENDOR_RANGE1_END ;
 int UMAD_CLASS_VENDOR_RANGE1_START ;
 int UMAD_CLASS_VENDOR_RANGE2_END ;
 int UMAD_CLASS_VENDOR_RANGE2_START ;

const char * umad_class_str(uint8_t mgmt_class)
{
 switch (mgmt_class) {
  case 128:
  case 129:
   return("Subn");
  case 130:
   return("SubnAdm");
  case 132:
   return("Perf");
  case 138:
   return("BM");
  case 133:
   return("DevMgt");
  case 136:
   return("ComMgt");
  case 131:
   return("SNMP");
  case 134:
   return("DevAdm");
  case 137:
   return("BootMgt");
  case 139:
   return("BIS");
  case 135:
   return("CongestionManagment");
  default:
   break;
 }

 if ((UMAD_CLASS_VENDOR_RANGE1_START <= mgmt_class
  && mgmt_class <= UMAD_CLASS_VENDOR_RANGE1_END)
     || (UMAD_CLASS_VENDOR_RANGE2_START <= mgmt_class
  && mgmt_class <= UMAD_CLASS_VENDOR_RANGE2_END))
  return("Vendor");

 if (UMAD_CLASS_APPLICATION_START <= mgmt_class
     && mgmt_class <= UMAD_CLASS_APPLICATION_END) {
  return("Application");
 }
 return ("<unknown>");
}
