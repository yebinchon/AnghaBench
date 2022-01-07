
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mka_created_mode { ____Placeholder_mka_created_mode } mka_created_mode ;





__attribute__((used)) static const char * mode_txt(enum mka_created_mode mode)
{
 switch (mode) {
 case 128:
  return "PSK";
 case 129:
  return "EAP";
 }

 return "?";
}
