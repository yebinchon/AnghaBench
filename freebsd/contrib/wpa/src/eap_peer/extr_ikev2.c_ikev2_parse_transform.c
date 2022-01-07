
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct ikev2_transform {int type; int transform_type; int const* transform_id; int const* transform_length; } ;
struct ikev2_proposal_data {void* dh; void* integ; void* prf; void* encr; } ;


 void* ENCR_AES_CBC ;




 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_GET_BE16 (int const*) ;
 int dh_groups_get (void*) ;
 int ikev2_get_encr (void*) ;
 int ikev2_get_integ (void*) ;
 int ikev2_get_prf (void*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ikev2_parse_transform(struct ikev2_proposal_data *prop,
     const u8 *pos, const u8 *end)
{
 int transform_len;
 const struct ikev2_transform *t;
 u16 transform_id;
 const u8 *tend;

 if (end - pos < (int) sizeof(*t)) {
  wpa_printf(MSG_INFO, "IKEV2: Too short transform");
  return -1;
 }

 t = (const struct ikev2_transform *) pos;
 transform_len = WPA_GET_BE16(t->transform_length);
 if (transform_len < (int) sizeof(*t) || transform_len > end - pos) {
  wpa_printf(MSG_INFO, "IKEV2: Invalid transform length %d",
      transform_len);
  return -1;
 }
 tend = pos + transform_len;

 transform_id = WPA_GET_BE16(t->transform_id);

 wpa_printf(MSG_DEBUG, "IKEV2:   Transform:");
 wpa_printf(MSG_DEBUG, "IKEV2:     Type: %d  Transform Length: %d  "
     "Transform Type: %d  Transform ID: %d",
     t->type, transform_len, t->transform_type, transform_id);

 if (t->type != 0 && t->type != 3) {
  wpa_printf(MSG_INFO, "IKEV2: Unexpected Transform type");
  return -1;
 }

 pos = (const u8 *) (t + 1);
 if (pos < tend) {
  wpa_hexdump(MSG_DEBUG, "IKEV2:     Transform Attributes",
       pos, tend - pos);
 }

 switch (t->transform_type) {
 case 130:
  if (ikev2_get_encr(transform_id)) {
   if (transform_id == ENCR_AES_CBC) {
    if (tend - pos != 4) {
     wpa_printf(MSG_DEBUG, "IKEV2: No "
         "Transform Attr for AES");
     break;
    }
    if (WPA_GET_BE16(pos) != 0x800e) {
     wpa_printf(MSG_DEBUG, "IKEV2: Not a "
         "Key Size attribute for "
         "AES");
     break;
    }
    if (WPA_GET_BE16(pos + 2) != 128) {
     wpa_printf(MSG_DEBUG, "IKEV2: "
         "Unsupported AES key size "
         "%d bits",
         WPA_GET_BE16(pos + 2));
     break;
    }
   }
   prop->encr = transform_id;
  }
  break;
 case 128:
  if (ikev2_get_prf(transform_id))
   prop->prf = transform_id;
  break;
 case 129:
  if (ikev2_get_integ(transform_id))
   prop->integ = transform_id;
  break;
 case 131:
  if (dh_groups_get(transform_id))
   prop->dh = transform_id;
  break;
 }

 return transform_len;
}
