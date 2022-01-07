
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct p2p_data {int ** wps_vendor_ext; } ;


 int P2P_MAX_WPS_VENDOR_EXT ;
 int * wpabuf_dup (struct wpabuf const*) ;

int p2p_add_wps_vendor_extension(struct p2p_data *p2p,
     const struct wpabuf *vendor_ext)
{
 int i;

 if (vendor_ext == ((void*)0))
  return -1;

 for (i = 0; i < P2P_MAX_WPS_VENDOR_EXT; i++) {
  if (p2p->wps_vendor_ext[i] == ((void*)0))
   break;
 }
 if (i >= P2P_MAX_WPS_VENDOR_EXT)
  return -1;

 p2p->wps_vendor_ext[i] = wpabuf_dup(vendor_ext);
 if (p2p->wps_vendor_ext[i] == ((void*)0))
  return -1;

 return 0;
}
