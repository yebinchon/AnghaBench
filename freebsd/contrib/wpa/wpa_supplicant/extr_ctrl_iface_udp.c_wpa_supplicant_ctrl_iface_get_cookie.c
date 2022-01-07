
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctrl_iface_priv {int cookie; } ;


 int COOKIE_LEN ;
 char* os_malloc (int) ;
 int os_memcpy (char*,char*,int) ;
 int wpa_snprintf_hex (char*,int,int ,int) ;

__attribute__((used)) static char *
wpa_supplicant_ctrl_iface_get_cookie(struct ctrl_iface_priv *priv,
         size_t *reply_len)
{
 char *reply;
 reply = os_malloc(7 + 2 * COOKIE_LEN + 1);
 if (reply == ((void*)0)) {
  *reply_len = 1;
  return ((void*)0);
 }

 os_memcpy(reply, "COOKIE=", 7);
 wpa_snprintf_hex(reply + 7, 2 * COOKIE_LEN + 1,
    priv->cookie, COOKIE_LEN);

 *reply_len = 7 + 2 * COOKIE_LEN;
 return reply;
}
