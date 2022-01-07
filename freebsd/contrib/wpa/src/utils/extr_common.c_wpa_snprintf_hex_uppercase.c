
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int _wpa_snprintf_hex (char*,size_t,int const*,size_t,int) ;

int wpa_snprintf_hex_uppercase(char *buf, size_t buf_size, const u8 *data,
          size_t len)
{
 return _wpa_snprintf_hex(buf, buf_size, data, len, 1);
}
