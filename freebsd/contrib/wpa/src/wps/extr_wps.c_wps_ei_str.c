
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wps_error_indication { ____Placeholder_wps_error_indication } wps_error_indication ;







const char * wps_ei_str(enum wps_error_indication ei)
{
 switch (ei) {
 case 130:
  return "No Error";
 case 129:
  return "TKIP Only Prohibited";
 case 128:
  return "WEP Prohibited";
 case 131:
  return "Authentication Failure";
 default:
  return "Unknown";
 }
}
