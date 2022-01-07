
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct p2p_group {scalar_t__ wfd_ie; TYPE_1__* p2p; scalar_t__ members; int noa; } ;
struct TYPE_2__ {scalar_t__* vendor_elem; } ;


 size_t VENDOR_ELEM_PROBE_RESP_P2P_GO ;
 int p2p_buf_add_device_info (struct wpabuf*,TYPE_1__*,int *) ;
 int p2p_buf_add_group_info (struct p2p_group*,struct wpabuf*,int) ;
 int p2p_group_add_common_ies (struct p2p_group*,struct wpabuf*) ;
 int p2p_group_add_noa (struct wpabuf*,int ) ;
 struct wpabuf* p2p_group_encaps_probe_resp (struct wpabuf*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct wpabuf* wpabuf_concat (struct wpabuf*,struct wpabuf*) ;
 struct wpabuf* wpabuf_dup (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * p2p_group_build_probe_resp_ie(struct p2p_group *group)
{
 struct wpabuf *p2p_subelems, *ie;

 p2p_subelems = wpabuf_alloc(500);
 if (p2p_subelems == ((void*)0))
  return ((void*)0);

 p2p_group_add_common_ies(group, p2p_subelems);
 p2p_group_add_noa(p2p_subelems, group->noa);


 p2p_buf_add_device_info(p2p_subelems, group->p2p, ((void*)0));


 if (group->members)
  p2p_buf_add_group_info(group, p2p_subelems, -1);

 ie = p2p_group_encaps_probe_resp(p2p_subelems);
 wpabuf_free(p2p_subelems);

 if (group->p2p->vendor_elem &&
     group->p2p->vendor_elem[VENDOR_ELEM_PROBE_RESP_P2P_GO]) {
  struct wpabuf *extra;
  extra = wpabuf_dup(group->p2p->vendor_elem[VENDOR_ELEM_PROBE_RESP_P2P_GO]);
  ie = wpabuf_concat(extra, ie);
 }
 return ie;
}
