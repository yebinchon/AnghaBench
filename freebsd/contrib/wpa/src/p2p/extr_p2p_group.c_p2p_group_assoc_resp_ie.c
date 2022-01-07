
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_group {TYPE_1__* p2p; scalar_t__ wfd_ie; } ;
struct TYPE_2__ {scalar_t__* vendor_elem; } ;


 int P2P_SC_SUCCESS ;
 size_t VENDOR_ELEM_P2P_ASSOC_RESP ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_status (struct wpabuf*,int ) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 struct wpabuf* wpabuf_alloc (int) ;
 size_t wpabuf_len (scalar_t__) ;
 int wpabuf_put_buf (struct wpabuf*,scalar_t__) ;

struct wpabuf * p2p_group_assoc_resp_ie(struct p2p_group *group, u8 status)
{
 struct wpabuf *resp;
 u8 *rlen;
 size_t extra = 0;






 if (group->p2p->vendor_elem &&
     group->p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_RESP])
  extra += wpabuf_len(group->p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_RESP]);







 resp = wpabuf_alloc(20 + extra);
 if (resp == ((void*)0))
  return ((void*)0);






 if (group->p2p->vendor_elem &&
     group->p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_RESP])
  wpabuf_put_buf(resp,
          group->p2p->vendor_elem[VENDOR_ELEM_P2P_ASSOC_RESP]);

 rlen = p2p_buf_add_ie_hdr(resp);
 if (status != P2P_SC_SUCCESS)
  p2p_buf_add_status(resp, status);
 p2p_buf_update_ie_hdr(resp, rlen);

 return resp;
}
