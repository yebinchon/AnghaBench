
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char* os_zalloc (int) ;
 int wpa_snprintf_hex (char*,int,int const*,size_t) ;

__attribute__((used)) static char * wpa_config_write_string_hex(const u8 *value, size_t len)
{
 char *buf;

 buf = os_zalloc(2 * len + 1);
 if (buf == ((void*)0))
  return ((void*)0);
 wpa_snprintf_hex(buf, 2 * len + 1, value, len);

 return buf;
}
