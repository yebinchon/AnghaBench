
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
role2str(int role)
{

 switch (role) {
 case 130:
  return ("init");
 case 129:
  return ("primary");
 case 128:
  return ("secondary");
 }
 return ("unknown");
}
