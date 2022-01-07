
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum val_state { ____Placeholder_val_state } val_state ;
const char*
val_state_to_string(enum val_state state)
{
 switch(state) {
  case 129: return "VAL_INIT_STATE";
  case 131: return "VAL_FINDKEY_STATE";
  case 128: return "VAL_VALIDATE_STATE";
  case 130: return "VAL_FINISHED_STATE";
  case 132: return "VAL_DLVLOOKUP_STATE";
 }
 return "UNKNOWN VALIDATOR STATE";
}
