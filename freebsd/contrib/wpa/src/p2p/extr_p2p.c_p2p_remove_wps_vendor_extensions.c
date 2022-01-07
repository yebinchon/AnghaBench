
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int ** wps_vendor_ext; } ;


 int P2P_MAX_WPS_VENDOR_EXT ;
 int wpabuf_free (int *) ;

void p2p_remove_wps_vendor_extensions(struct p2p_data *p2p)
{
 int i;

 for (i = 0; i < P2P_MAX_WPS_VENDOR_EXT; i++) {
  wpabuf_free(p2p->wps_vendor_ext[i]);
  p2p->wps_vendor_ext[i] = ((void*)0);
 }
}
