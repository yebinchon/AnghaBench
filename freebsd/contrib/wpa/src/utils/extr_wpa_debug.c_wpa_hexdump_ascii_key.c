
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _wpa_hexdump_ascii (int,char const*,void const*,size_t,int ) ;
 int wpa_debug_show_keys ;

void wpa_hexdump_ascii_key(int level, const char *title, const void *buf,
      size_t len)
{
 _wpa_hexdump_ascii(level, title, buf, len, wpa_debug_show_keys);
}
