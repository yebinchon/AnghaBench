
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hostapd_radius_attr {scalar_t__ type; struct hostapd_radius_attr* next; } ;



struct hostapd_radius_attr *
hostapd_config_get_radius_attr(struct hostapd_radius_attr *attr, u8 type)
{
 for (; attr; attr = attr->next) {
  if (attr->type == type)
   return attr;
 }
 return ((void*)0);
}
