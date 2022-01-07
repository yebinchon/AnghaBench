
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct p2p_data {struct wpabuf** vendor_elem; } ;



void p2p_set_vendor_elems(struct p2p_data *p2p, struct wpabuf **vendor_elem)
{
 p2p->vendor_elem = vendor_elem;
}
