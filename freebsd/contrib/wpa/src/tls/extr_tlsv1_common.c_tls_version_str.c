
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;






const char * tls_version_str(u16 ver)
{
 switch (ver) {
 case 130:
  return "1.0";
 case 129:
  return "1.1";
 case 128:
  return "1.2";
 }

 return "?";
}
