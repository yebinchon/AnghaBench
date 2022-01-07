
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dh_group {int dummy; } ;







 struct dh_group const* dh_groups_get (int) ;

__attribute__((used)) static const struct dh_group * eap_eke_dh_group(u8 group)
{
 switch (group) {
 case 129:
  return dh_groups_get(2);
 case 128:
  return dh_groups_get(5);
 case 132:
  return dh_groups_get(14);
 case 131:
  return dh_groups_get(15);
 case 130:
  return dh_groups_get(16);
 }

 return ((void*)0);
}
