
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







__attribute__((used)) static const char * get_ac_str(u8 ac)
{
 switch (ac) {
 case 131:
  return "BE";
 case 130:
  return "BK";
 case 129:
  return "VI";
 case 128:
  return "VO";
 default:
  return "N/A";
 }
}
