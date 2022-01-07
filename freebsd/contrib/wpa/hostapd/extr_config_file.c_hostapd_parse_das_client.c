
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_bss_config {int radius_das_shared_secret_len; int * radius_das_shared_secret; int radius_das_client_addr; } ;


 scalar_t__ hostapd_parse_ip_addr (char*,int *) ;
 int os_free (int *) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strdup (char*) ;
 int os_strlen (char*) ;

__attribute__((used)) static int hostapd_parse_das_client(struct hostapd_bss_config *bss, char *val)
{
 char *secret;

 secret = os_strchr(val, ' ');
 if (secret == ((void*)0))
  return -1;

 *secret++ = '\0';

 if (hostapd_parse_ip_addr(val, &bss->radius_das_client_addr))
  return -1;

 os_free(bss->radius_das_shared_secret);
 bss->radius_das_shared_secret = (u8 *) os_strdup(secret);
 if (bss->radius_das_shared_secret == ((void*)0))
  return -1;
 bss->radius_das_shared_secret_len = os_strlen(secret);

 return 0;
}
