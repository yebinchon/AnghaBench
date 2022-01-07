
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_group {int noa; TYPE_2__* p2p; } ;
struct TYPE_4__ {TYPE_1__* cfg; scalar_t__* vendor_elem; scalar_t__ wfd_ie_beacon; } ;
struct TYPE_3__ {int dev_addr; } ;


 size_t VENDOR_ELEM_BEACON_P2P_GO ;
 int p2p_buf_add_device_id (struct wpabuf*,int ) ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 int p2p_group_add_common_ies (struct p2p_group*,struct wpabuf*) ;
 int p2p_group_add_noa (struct wpabuf*,int ) ;
 struct wpabuf* wpabuf_alloc (int) ;
 size_t wpabuf_len (scalar_t__) ;
 int wpabuf_put_buf (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * p2p_group_build_beacon_ie(struct p2p_group *group)
{
 struct wpabuf *ie;
 u8 *len;
 size_t extra = 0;






 if (group->p2p->vendor_elem &&
     group->p2p->vendor_elem[VENDOR_ELEM_BEACON_P2P_GO])
  extra += wpabuf_len(group->p2p->vendor_elem[VENDOR_ELEM_BEACON_P2P_GO]);

 ie = wpabuf_alloc(257 + extra);
 if (ie == ((void*)0))
  return ((void*)0);






 if (group->p2p->vendor_elem &&
     group->p2p->vendor_elem[VENDOR_ELEM_BEACON_P2P_GO])
  wpabuf_put_buf(ie,
          group->p2p->vendor_elem[VENDOR_ELEM_BEACON_P2P_GO]);

 len = p2p_buf_add_ie_hdr(ie);
 p2p_group_add_common_ies(group, ie);
 p2p_buf_add_device_id(ie, group->p2p->cfg->dev_addr);
 p2p_group_add_noa(ie, group->noa);
 p2p_buf_update_ie_hdr(ie, len);

 return ie;
}
