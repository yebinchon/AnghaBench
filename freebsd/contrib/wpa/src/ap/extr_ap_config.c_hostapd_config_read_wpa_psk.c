
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_wpa_psk {int vlan_id; int group; struct hostapd_wpa_psk* next; int keyid; int psk; int addr; } ;
struct hostapd_ssid {struct hostapd_wpa_psk* wpa_psk; int ssid_len; int ssid; } ;
typedef int buf ;
typedef int FILE ;


 int ETH_ALEN ;
 int MSG_ERROR ;
 int PMK_LEN ;
 int atoi (char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ hexstr2bin (char*,int ,int ) ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int os_free (struct hostapd_wpa_psk*) ;
 int os_memcpy (int ,int *,int) ;
 int os_strchr (char*,char) ;
 int os_strcmp (char*,char*) ;
 int os_strlcpy (int ,char const*,int) ;
 int os_strlen (char*) ;
 struct hostapd_wpa_psk* os_zalloc (int) ;
 int pbkdf2_sha1 (char*,int ,int ,int,int ,int ) ;
 char* str_token (char*,char*,char**) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int hostapd_config_read_wpa_psk(const char *fname,
           struct hostapd_ssid *ssid)
{
 FILE *f;
 char buf[128], *pos;
 const char *keyid;
 char *context;
 char *context2;
 char *token;
 char *name;
 char *value;
 int line = 0, ret = 0, len, ok;
 u8 addr[ETH_ALEN];
 struct hostapd_wpa_psk *psk;

 if (!fname)
  return 0;

 f = fopen(fname, "r");
 if (!f) {
  wpa_printf(MSG_ERROR, "WPA PSK file '%s' not found.", fname);
  return -1;
 }

 while (fgets(buf, sizeof(buf), f)) {
  int vlan_id = 0;

  line++;

  if (buf[0] == '#')
   continue;
  pos = buf;
  while (*pos != '\0') {
   if (*pos == '\n') {
    *pos = '\0';
    break;
   }
   pos++;
  }
  if (buf[0] == '\0')
   continue;

  context = ((void*)0);
  keyid = ((void*)0);
  while ((token = str_token(buf, " ", &context))) {
   if (!os_strchr(token, '='))
    break;
   context2 = ((void*)0);
   name = str_token(token, "=", &context2);
   if (!name)
    break;
   value = str_token(token, "", &context2);
   if (!value)
    value = "";
   if (!os_strcmp(name, "keyid")) {
    keyid = value;
   } else if (!os_strcmp(name, "vlanid")) {
    vlan_id = atoi(value);
   } else {
    wpa_printf(MSG_ERROR,
        "Unrecognized '%s=%s' on line %d in '%s'",
        name, value, line, fname);
    ret = -1;
    break;
   }
  }

  if (ret == -1)
   break;

  if (!token)
   token = "";
  if (hwaddr_aton(token, addr)) {
   wpa_printf(MSG_ERROR, "Invalid MAC address '%s' on "
       "line %d in '%s'", token, line, fname);
   ret = -1;
   break;
  }

  psk = os_zalloc(sizeof(*psk));
  if (psk == ((void*)0)) {
   wpa_printf(MSG_ERROR, "WPA PSK allocation failed");
   ret = -1;
   break;
  }
  psk->vlan_id = vlan_id;
  if (is_zero_ether_addr(addr))
   psk->group = 1;
  else
   os_memcpy(psk->addr, addr, ETH_ALEN);

  pos = str_token(buf, "", &context);
  if (!pos) {
   wpa_printf(MSG_ERROR, "No PSK on line %d in '%s'",
       line, fname);
   os_free(psk);
   ret = -1;
   break;
  }

  ok = 0;
  len = os_strlen(pos);
  if (len == 64 && hexstr2bin(pos, psk->psk, PMK_LEN) == 0)
   ok = 1;
  else if (len >= 8 && len < 64) {
   pbkdf2_sha1(pos, ssid->ssid, ssid->ssid_len,
        4096, psk->psk, PMK_LEN);
   ok = 1;
  }
  if (!ok) {
   wpa_printf(MSG_ERROR, "Invalid PSK '%s' on line %d in "
       "'%s'", pos, line, fname);
   os_free(psk);
   ret = -1;
   break;
  }

  if (keyid) {
   len = os_strlcpy(psk->keyid, keyid, sizeof(psk->keyid));
   if ((size_t) len >= sizeof(psk->keyid)) {
    wpa_printf(MSG_ERROR,
        "PSK keyid too long on line %d in '%s'",
        line, fname);
    os_free(psk);
    ret = -1;
    break;
   }
  }

  psk->next = ssid->wpa_psk;
  ssid->wpa_psk = psk;
 }

 fclose(f);

 return ret;
}
