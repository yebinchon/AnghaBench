
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 int MSG_ERROR ;
 char* os_strchr (char const*,char) ;
 size_t os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char const*,size_t) ;
 scalar_t__ select_driver (struct wpa_supplicant*,int) ;
 TYPE_1__** wpa_drivers ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;

__attribute__((used)) static int wpa_supplicant_set_driver(struct wpa_supplicant *wpa_s,
         const char *name)
{
 int i;
 size_t len;
 const char *pos, *driver = name;

 if (wpa_s == ((void*)0))
  return -1;

 if (wpa_drivers[0] == ((void*)0)) {
  wpa_msg(wpa_s, MSG_ERROR, "No driver interfaces build into "
   "wpa_supplicant");
  return -1;
 }

 if (name == ((void*)0)) {

  return select_driver(wpa_s, 0);
 }

 do {
  pos = os_strchr(driver, ',');
  if (pos)
   len = pos - driver;
  else
   len = os_strlen(driver);

  for (i = 0; wpa_drivers[i]; i++) {
   if (os_strlen(wpa_drivers[i]->name) == len &&
       os_strncmp(driver, wpa_drivers[i]->name, len) ==
       0) {

    if (select_driver(wpa_s, i) == 0)
     return 0;
   }
  }

  driver = pos + 1;
 } while (pos);

 wpa_msg(wpa_s, MSG_ERROR, "Unsupported driver '%s'", name);
 return -1;
}
