
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * timeout_next_str(int val)
{
 switch (val) {
 case 129:
  return "NULLFUNC POLL";
 case 131:
  return "DISASSOC";
 case 132:
  return "DEAUTH";
 case 128:
  return "REMOVE";
 case 130:
  return "DISASSOC_FROM_CLI";
 }

 return "?";
}
