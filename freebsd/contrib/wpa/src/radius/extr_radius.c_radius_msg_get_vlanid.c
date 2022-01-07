
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tunnel ;
struct radius_tunnel_attrs {scalar_t__ type; scalar_t__ medium_type; int vlanid; scalar_t__ tag_used; } ;
struct radius_msg {size_t attr_used; } ;
struct radius_attr_hdr {int length; int type; } ;
typedef int buf ;






 scalar_t__ RADIUS_TUNNEL_MEDIUM_TYPE_802 ;
 int RADIUS_TUNNEL_TAGS ;
 scalar_t__ RADIUS_TUNNEL_TYPE_VLAN ;
 void* WPA_GET_BE24 (int const*) ;
 int atoi (char*) ;
 int cmp_int ;
 int os_memcpy (char*,int const*,size_t) ;
 int os_memset (struct radius_tunnel_attrs**,int ,int) ;
 int qsort (int*,int,int,int ) ;
 struct radius_attr_hdr* radius_get_attr_hdr (struct radius_msg*,size_t) ;

int radius_msg_get_vlanid(struct radius_msg *msg, int *untagged, int numtagged,
     int *tagged)
{
 struct radius_tunnel_attrs tunnel[RADIUS_TUNNEL_TAGS], *tun;
 size_t i;
 struct radius_attr_hdr *attr = ((void*)0);
 const u8 *data;
 char buf[10];
 size_t dlen;
 int j, taggedidx = 0, vlan_id;

 os_memset(&tunnel, 0, sizeof(tunnel));
 for (j = 0; j < numtagged; j++)
  tagged[j] = 0;
 *untagged = 0;

 for (i = 0; i < msg->attr_used; i++) {
  attr = radius_get_attr_hdr(msg, i);
  if (attr->length < sizeof(*attr))
   return -1;
  data = (const u8 *) (attr + 1);
  dlen = attr->length - sizeof(*attr);
  if (attr->length < 3)
   continue;
  if (data[0] >= RADIUS_TUNNEL_TAGS)
   tun = &tunnel[0];
  else
   tun = &tunnel[data[0]];

  switch (attr->type) {
  case 128:
   if (attr->length != 6)
    break;
   tun->tag_used++;
   tun->type = WPA_GET_BE24(data + 1);
   break;
  case 130:
   if (attr->length != 6)
    break;
   tun->tag_used++;
   tun->medium_type = WPA_GET_BE24(data + 1);
   break;
  case 129:
   if (data[0] < RADIUS_TUNNEL_TAGS) {
    data++;
    dlen--;
   }
   if (dlen >= sizeof(buf))
    break;
   os_memcpy(buf, data, dlen);
   buf[dlen] = '\0';
   vlan_id = atoi(buf);
   if (vlan_id <= 0)
    break;
   tun->tag_used++;
   tun->vlanid = vlan_id;
   break;
  case 131:
   if (attr->length != 6)
    break;
   vlan_id = WPA_GET_BE24(data + 1);
   if (vlan_id <= 0)
    break;
   if (data[0] == 0x32)
    *untagged = vlan_id;
   else if (data[0] == 0x31 && tagged &&
     taggedidx < numtagged)
    tagged[taggedidx++] = vlan_id;
   break;
  }
 }


 for (i = 0; i < RADIUS_TUNNEL_TAGS; i++) {
  tun = &tunnel[i];
  if (tun->tag_used &&
      tun->type == RADIUS_TUNNEL_TYPE_VLAN &&
      tun->medium_type == RADIUS_TUNNEL_MEDIUM_TYPE_802 &&
      tun->vlanid > 0) {
   *untagged = tun->vlanid;
   break;
  }
 }

 if (taggedidx)
  qsort(tagged, taggedidx, sizeof(int), cmp_int);

 if (*untagged > 0 || taggedidx)
  return 1;
 return 0;
}
