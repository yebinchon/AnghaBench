
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_parse_attr {scalar_t__ num_req_dev_type; int req_dev_type; } ;
struct wpabuf {int dummy; } ;
struct p2p_group_member {int * client_info; } ;


 int ETH_ALEN ;
 int WPS_DEV_TYPE_LEN ;
 scalar_t__ dev_type_list_match (int const*,int ,scalar_t__) ;
 int* wpabuf_head (int *) ;
 int wpabuf_len (int *) ;
 scalar_t__ wps_parse_msg (struct wpabuf*,struct wps_parse_attr*) ;

__attribute__((used)) static int p2p_match_dev_type_member(struct p2p_group_member *m,
         struct wpabuf *wps)
{
 const u8 *pos, *end;
 struct wps_parse_attr attr;
 u8 num_sec;

 if (m->client_info == ((void*)0) || wps == ((void*)0))
  return 0;

 pos = wpabuf_head(m->client_info);
 end = pos + wpabuf_len(m->client_info);

 pos += 1 + 2 * ETH_ALEN + 1 + 2;
 if (end - pos < WPS_DEV_TYPE_LEN + 1)
  return 0;

 if (wps_parse_msg(wps, &attr))
  return 1;

 if (attr.num_req_dev_type == 0)
  return 1;

 if (dev_type_list_match(pos, attr.req_dev_type, attr.num_req_dev_type))
  return 1;

 pos += WPS_DEV_TYPE_LEN;
 num_sec = *pos++;
 if (end - pos < num_sec * WPS_DEV_TYPE_LEN)
  return 0;
 while (num_sec > 0) {
  num_sec--;
  if (dev_type_list_match(pos, attr.req_dev_type,
     attr.num_req_dev_type))
   return 1;
  pos += WPS_DEV_TYPE_LEN;
 }


 return 0;
}
