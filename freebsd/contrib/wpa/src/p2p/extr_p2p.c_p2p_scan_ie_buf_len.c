
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {scalar_t__* vendor_elem; scalar_t__ wfd_ie_probe_req; } ;


 size_t VENDOR_ELEM_PROBE_REQ_P2P ;
 scalar_t__ wpabuf_len (scalar_t__) ;

size_t p2p_scan_ie_buf_len(struct p2p_data *p2p)
{
 size_t len = 100;






 if (p2p && p2p->vendor_elem &&
     p2p->vendor_elem[VENDOR_ELEM_PROBE_REQ_P2P])
  len += wpabuf_len(p2p->vendor_elem[VENDOR_ELEM_PROBE_REQ_P2P]);

 return len;
}
