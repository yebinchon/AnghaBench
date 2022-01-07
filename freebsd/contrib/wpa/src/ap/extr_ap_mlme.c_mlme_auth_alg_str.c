
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * mlme_auth_alg_str(int alg)
{
 switch (alg) {
 case 129:
  return "OPEN_SYSTEM";
 case 128:
  return "SHARED_KEY";
 case 130:
  return "FT";
 }

 return "unknown";
}
