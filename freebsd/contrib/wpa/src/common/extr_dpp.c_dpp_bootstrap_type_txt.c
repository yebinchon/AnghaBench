
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dpp_bootstrap_type { ____Placeholder_dpp_bootstrap_type } dpp_bootstrap_type ;





const char * dpp_bootstrap_type_txt(enum dpp_bootstrap_type type)
{
 switch (type) {
 case 128:
  return "QRCODE";
 case 129:
  return "PKEX";
 }
 return "??";
}
