
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_config_blob {size_t len; int * data; } ;
struct eap_sm {int dummy; } ;
struct eap_fast_pac {int pac_opaque_len; int pac_info_len; struct eap_fast_pac* next; int * pac_info; int * pac_opaque; int pac_key; void* pac_type; } ;


 void* EAP_FAST_PAC_BINARY_FORMAT_VERSION ;
 scalar_t__ EAP_FAST_PAC_BINARY_MAGIC ;
 int EAP_FAST_PAC_KEY_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 void* WPA_GET_BE16 (int *) ;
 scalar_t__ WPA_GET_BE32 (int *) ;
 int eap_fast_free_pac (struct eap_fast_pac*) ;
 int eap_fast_pac_get_a_id (struct eap_fast_pac*) ;
 struct wpa_config_blob* eap_get_config_blob (struct eap_sm*,char const*) ;
 int os_free (int *) ;
 int os_memcpy (int ,int *,int) ;
 void* os_memdup (int *,int) ;
 scalar_t__ os_readfile (char const*,size_t*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 struct eap_fast_pac* os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;

int eap_fast_load_pac_bin(struct eap_sm *sm, struct eap_fast_pac **pac_root,
     const char *pac_file)
{
 const struct wpa_config_blob *blob = ((void*)0);
 u8 *buf, *end, *pos;
 size_t len, count = 0;
 struct eap_fast_pac *pac, *prev;

 *pac_root = ((void*)0);

 if (pac_file == ((void*)0))
  return -1;

 if (os_strncmp(pac_file, "blob://", 7) == 0) {
  blob = eap_get_config_blob(sm, pac_file + 7);
  if (blob == ((void*)0)) {
   wpa_printf(MSG_INFO, "EAP-FAST: No PAC blob '%s' - "
       "assume no PAC entries have been "
       "provisioned", pac_file + 7);
   return 0;
  }
  buf = blob->data;
  len = blob->len;
 } else {
  buf = (u8 *) os_readfile(pac_file, &len);
  if (buf == ((void*)0)) {
   wpa_printf(MSG_INFO, "EAP-FAST: No PAC file '%s' - "
       "assume no PAC entries have been "
       "provisioned", pac_file);
   return 0;
  }
 }

 if (len == 0) {
  if (blob == ((void*)0))
   os_free(buf);
  return 0;
 }

 if (len < 6 || WPA_GET_BE32(buf) != EAP_FAST_PAC_BINARY_MAGIC ||
     WPA_GET_BE16(buf + 4) != EAP_FAST_PAC_BINARY_FORMAT_VERSION) {
  wpa_printf(MSG_INFO, "EAP-FAST: Invalid PAC file '%s' (bin)",
      pac_file);
  if (blob == ((void*)0))
   os_free(buf);
  return -1;
 }

 pac = prev = ((void*)0);
 pos = buf + 6;
 end = buf + len;
 while (pos < end) {
  u16 val;

  if (end - pos < 2 + EAP_FAST_PAC_KEY_LEN + 2 + 2) {
   pac = ((void*)0);
   goto parse_fail;
  }

  pac = os_zalloc(sizeof(*pac));
  if (pac == ((void*)0))
   goto parse_fail;

  pac->pac_type = WPA_GET_BE16(pos);
  pos += 2;
  os_memcpy(pac->pac_key, pos, EAP_FAST_PAC_KEY_LEN);
  pos += EAP_FAST_PAC_KEY_LEN;
  val = WPA_GET_BE16(pos);
  pos += 2;
  if (val > end - pos)
   goto parse_fail;
  pac->pac_opaque_len = val;
  pac->pac_opaque = os_memdup(pos, pac->pac_opaque_len);
  if (pac->pac_opaque == ((void*)0))
   goto parse_fail;
  pos += pac->pac_opaque_len;
  if (2 > end - pos)
   goto parse_fail;
  val = WPA_GET_BE16(pos);
  pos += 2;
  if (val > end - pos)
   goto parse_fail;
  pac->pac_info_len = val;
  pac->pac_info = os_memdup(pos, pac->pac_info_len);
  if (pac->pac_info == ((void*)0))
   goto parse_fail;
  pos += pac->pac_info_len;
  eap_fast_pac_get_a_id(pac);

  count++;
  if (prev)
   prev->next = pac;
  else
   *pac_root = pac;
  prev = pac;
 }

 if (blob == ((void*)0))
  os_free(buf);

 wpa_printf(MSG_DEBUG, "EAP-FAST: Read %lu PAC entries from '%s' (bin)",
     (unsigned long) count, pac_file);

 return 0;

parse_fail:
 wpa_printf(MSG_INFO, "EAP-FAST: Failed to parse PAC file '%s' (bin)",
     pac_file);
 if (blob == ((void*)0))
  os_free(buf);
 if (pac)
  eap_fast_free_pac(pac);
 return -1;
}
