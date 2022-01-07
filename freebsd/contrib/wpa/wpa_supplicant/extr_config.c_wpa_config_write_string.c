
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ is_hex (int const*,size_t) ;
 char* wpa_config_write_string_ascii (int const*,size_t) ;
 char* wpa_config_write_string_hex (int const*,size_t) ;

__attribute__((used)) static char * wpa_config_write_string(const u8 *value, size_t len)
{
 if (value == ((void*)0))
  return ((void*)0);

 if (is_hex(value, len))
  return wpa_config_write_string_hex(value, len);
 else
  return wpa_config_write_string_ascii(value, len);
}
