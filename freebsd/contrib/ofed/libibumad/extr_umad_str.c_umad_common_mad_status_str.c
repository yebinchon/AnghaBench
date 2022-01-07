
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int __be16 ;




 int UMAD_STATUS_BUSY ;

 int UMAD_STATUS_INVALID_FIELD_MASK ;

 int UMAD_STATUS_REDIRECT ;
 int be16toh (int ) ;

const char * umad_common_mad_status_str(__be16 _status)
{
 uint16_t status = be16toh(_status);

 if (status & UMAD_STATUS_BUSY)
  return ("Busy");

 if (status & UMAD_STATUS_REDIRECT)
  return ("Redirection required");

 switch(status & UMAD_STATUS_INVALID_FIELD_MASK) {
  case 130:
   return ("Bad Version");
  case 128:
   return ("Method not supported");
  case 131:
   return ("Method/Attribute combo not supported");
  case 129:
   return ("Invalid attribute/modifier field");
 }
 return ("Success");
}
