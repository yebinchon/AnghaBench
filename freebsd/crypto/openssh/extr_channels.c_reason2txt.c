
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
reason2txt(int reason)
{
 switch (reason) {
 case 131:
  return "administratively prohibited";
 case 130:
  return "connect failed";
 case 128:
  return "unknown channel type";
 case 129:
  return "resource shortage";
 }
 return "unknown reason";
}
