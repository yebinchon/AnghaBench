
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_change_initiator { ____Placeholder_reg_change_initiator } reg_change_initiator ;
__attribute__((used)) static const char * reg_init_str(enum reg_change_initiator init)
{
 switch (init) {
 case 131:
  return "CORE";
 case 128:
  return "USER";
 case 129:
  return "DRIVER";
 case 130:
  return "COUNTRY_IE";
 case 132:
  return "BEACON_HINT";
 }
 return "?";
}
