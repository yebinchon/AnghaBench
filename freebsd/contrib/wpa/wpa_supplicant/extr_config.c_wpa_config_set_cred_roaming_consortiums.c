
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_cred {unsigned int num_roaming_consortiums; int roaming_consortiums_len; int roaming_consortiums; } ;
typedef int roaming_consortiums_len ;
typedef int roaming_consortiums ;


 int MAX_ROAMING_CONS ;
 int MAX_ROAMING_CONS_OI_LEN ;
 int MSG_INFO ;
 scalar_t__ hexstr2bin (char const*,int *,size_t) ;
 int os_memcpy (int ,size_t*,int) ;
 int os_memset (size_t*,int ,int) ;
 char* os_strchr (char const*,char) ;
 size_t os_strlen (char const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpa_config_set_cred_roaming_consortiums(struct wpa_cred *cred,
         const char *value)
{
 u8 roaming_consortiums[MAX_ROAMING_CONS][MAX_ROAMING_CONS_OI_LEN];
 size_t roaming_consortiums_len[MAX_ROAMING_CONS];
 unsigned int num_roaming_consortiums = 0;
 const char *pos, *end;
 size_t len;

 os_memset(roaming_consortiums, 0, sizeof(roaming_consortiums));
 os_memset(roaming_consortiums_len, 0, sizeof(roaming_consortiums_len));

 for (pos = value;;) {
  end = os_strchr(pos, ',');
  len = end ? (size_t) (end - pos) : os_strlen(pos);
  if (!end && len == 0)
   break;
  if (len == 0 || (len & 1) != 0 ||
      len / 2 > MAX_ROAMING_CONS_OI_LEN ||
      hexstr2bin(pos,
          roaming_consortiums[num_roaming_consortiums],
          len / 2) < 0) {
   wpa_printf(MSG_INFO,
       "Invalid roaming_consortiums entry: %s",
       pos);
   return -1;
  }
  roaming_consortiums_len[num_roaming_consortiums] = len / 2;
  num_roaming_consortiums++;

  if (!end)
   break;

  if (num_roaming_consortiums >= MAX_ROAMING_CONS) {
   wpa_printf(MSG_INFO,
       "Too many roaming_consortiums OIs");
   return -1;
  }

  pos = end + 1;
 }

 os_memcpy(cred->roaming_consortiums, roaming_consortiums,
    sizeof(roaming_consortiums));
 os_memcpy(cred->roaming_consortiums_len, roaming_consortiums_len,
    sizeof(roaming_consortiums_len));
 cred->num_roaming_consortiums = num_roaming_consortiums;

 return 0;
}
