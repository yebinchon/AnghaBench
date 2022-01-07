
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int __be16 ;
 int UMAD_STATUS_CLASS_MASK ;
 int be16toh (int ) ;

const char * umad_sa_mad_status_str(__be16 _status)
{
 uint16_t status = be16toh(_status);
 switch((status & UMAD_STATUS_CLASS_MASK) >> 8) {
  case 129:
   return ("Success");
  case 133:
   return ("No Resources");
  case 130:
   return ("Request Invalid");
  case 134:
   return ("No Records");
  case 128:
   return ("Too Many Records");
  case 135:
   return ("Invalid GID");
  case 136:
   return ("Insufficient Components");
  case 131:
   return ("Request Denied");
  case 132:
   return ("Priority Suggested");
 }
 return ("Undefined Error");
}
