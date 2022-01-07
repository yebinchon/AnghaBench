
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *sm_state_str(int state)
{
 switch (state) {
 case 131:
  return "Discovering";
 case 128:
  return "Standby    ";
 case 129:
  return "Not Active ";
 case 130:
  return "Master     ";
 }
 return "UNKNOWN    ";
}
