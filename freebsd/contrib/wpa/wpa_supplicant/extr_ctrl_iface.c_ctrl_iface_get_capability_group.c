
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_driver_capa {int enc; } ;
struct TYPE_3__ {int capa; int name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ciphers ;
 int os_snprintf (char*,int,char*,char*,int ) ;
 scalar_t__ os_snprintf_error (int,int) ;
 size_t os_strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int ctrl_iface_get_capability_group(int res, char *strict,
        struct wpa_driver_capa *capa,
        char *buf, size_t buflen)
{
 int ret;
 char *pos, *end;
 size_t len;
 unsigned int i;

 pos = buf;
 end = pos + buflen;

 if (res < 0) {
  if (strict)
   return 0;
  len = os_strlcpy(buf, "CCMP TKIP WEP104 WEP40", buflen);
  if (len >= buflen)
   return -1;
  return len;
 }

 for (i = 0; i < ARRAY_SIZE(ciphers); i++) {
  if (capa->enc & ciphers[i].capa) {
   ret = os_snprintf(pos, end - pos, "%s%s",
       pos == buf ? "" : " ",
       ciphers[i].name);
   if (os_snprintf_error(end - pos, ret))
    return pos - buf;
   pos += ret;
  }
 }

 return pos - buf;
}
