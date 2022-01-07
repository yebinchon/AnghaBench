
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
sevinfo(int sev)
{

 switch (sev) {
 case 130:
  return ("HALT");
 case 131:
  return ("ERROR");
 case 128:
  return ("WARNING");
 case 129:
  return ("INFO");
 default:
  return (((void*)0));
 }
}
