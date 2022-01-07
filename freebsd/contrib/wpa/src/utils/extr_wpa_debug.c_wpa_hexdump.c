
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _wpa_hexdump (int,char const*,void const*,size_t,int) ;

void wpa_hexdump(int level, const char *title, const void *buf, size_t len)
{
 _wpa_hexdump(level, title, buf, len, 1);
}
