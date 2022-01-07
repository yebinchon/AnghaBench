
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostap_driver_data {size_t generic_ie_len; int * generic_ie; } ;


 int hostapd_ioctl_set_generic_elem (struct hostap_driver_data*) ;
 int os_free (int *) ;
 int * os_memdup (int const*,size_t) ;

__attribute__((used)) static int hostap_set_generic_elem(void *priv,
       const u8 *elem, size_t elem_len)
{
 struct hostap_driver_data *drv = priv;

 os_free(drv->generic_ie);
 drv->generic_ie = ((void*)0);
 drv->generic_ie_len = 0;
 if (elem) {
  drv->generic_ie = os_memdup(elem, elem_len);
  if (drv->generic_ie == ((void*)0))
   return -1;
  drv->generic_ie_len = elem_len;
 }

 return hostapd_ioctl_set_generic_elem(drv);
}
