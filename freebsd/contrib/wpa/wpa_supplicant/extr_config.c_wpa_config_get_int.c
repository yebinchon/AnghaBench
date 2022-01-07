
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_config {int dummy; } ;


 int os_snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int wpa_config_get_int(const char *name, struct wpa_config *config,
         long offset, char *buf, size_t buflen,
         int pretty_print)
{
 int *val = (int *) (((u8 *) config) + (long) offset);

 if (pretty_print)
  return os_snprintf(buf, buflen, "%s=%d\n", name, *val);
 return os_snprintf(buf, buflen, "%d", *val);
}
