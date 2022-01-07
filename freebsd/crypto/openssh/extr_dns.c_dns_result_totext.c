
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** errset_text ;

__attribute__((used)) static const char *
dns_result_totext(unsigned int res)
{
 switch (res) {
 case 128:
  return errset_text[128];
 case 130:
  return errset_text[130];
 case 133:
  return errset_text[133];
 case 132:
  return errset_text[132];
 case 129:
  return errset_text[129];
 case 131:
  return errset_text[131];
 default:
  return "unknown error";
 }
}
