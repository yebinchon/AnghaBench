
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sae_data {TYPE_1__* tmp; } ;
struct TYPE_2__ {char* pw_id; } ;


 int MSG_DEBUG ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int os_free (char*) ;
 char* os_malloc (int const) ;
 scalar_t__ os_memcmp (char*,int const*,int const) ;
 int os_memcpy (char*,int const*,int const) ;
 scalar_t__ os_strlen (char*) ;
 int sae_is_password_id_elem (int const*,int const*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_ascii (int ,char*,char*,int const) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int sae_parse_password_identifier(struct sae_data *sae,
      const u8 *pos, const u8 *end)
{
 wpa_hexdump(MSG_DEBUG, "SAE: Possible elements at the end of the frame",
      pos, end - pos);
 if (!sae_is_password_id_elem(pos, end)) {
  if (sae->tmp->pw_id) {
   wpa_printf(MSG_DEBUG,
       "SAE: No Password Identifier included, but expected one (%s)",
       sae->tmp->pw_id);
   return WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER;
  }
  os_free(sae->tmp->pw_id);
  sae->tmp->pw_id = ((void*)0);
  return WLAN_STATUS_SUCCESS;
 }

 if (sae->tmp->pw_id &&
     (pos[1] - 1 != (int) os_strlen(sae->tmp->pw_id) ||
      os_memcmp(sae->tmp->pw_id, pos + 3, pos[1] - 1) != 0)) {
  wpa_printf(MSG_DEBUG,
      "SAE: The included Password Identifier does not match the expected one (%s)",
      sae->tmp->pw_id);
  return WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER;
 }

 os_free(sae->tmp->pw_id);
 sae->tmp->pw_id = os_malloc(pos[1]);
 if (!sae->tmp->pw_id)
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 os_memcpy(sae->tmp->pw_id, pos + 3, pos[1] - 1);
 sae->tmp->pw_id[pos[1] - 1] = '\0';
 wpa_hexdump_ascii(MSG_DEBUG, "SAE: Received Password Identifier",
     sae->tmp->pw_id, pos[1] - 1);
 return WLAN_STATUS_SUCCESS;
}
