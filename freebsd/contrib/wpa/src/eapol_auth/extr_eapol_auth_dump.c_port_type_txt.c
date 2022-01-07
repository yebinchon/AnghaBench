
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortTypes ;






__attribute__((used)) static inline const char * port_type_txt(PortTypes pt)
{
 switch (pt) {
 case 128: return "ForceUnauthorized";
 case 129: return "ForceAuthorized";
 case 130: return "Auto";
 default: return "Unknown";
 }
}
