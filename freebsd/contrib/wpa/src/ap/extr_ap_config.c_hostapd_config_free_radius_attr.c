
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_radius_attr {int val; struct hostapd_radius_attr* next; } ;


 int os_free (struct hostapd_radius_attr*) ;
 int wpabuf_free (int ) ;

void hostapd_config_free_radius_attr(struct hostapd_radius_attr *attr)
{
 struct hostapd_radius_attr *prev;

 while (attr) {
  prev = attr;
  attr = attr->next;
  wpabuf_free(prev->val);
  os_free(prev);
 }
}
