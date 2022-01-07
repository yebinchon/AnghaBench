
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char* os_malloc (size_t) ;
 int os_memcpy (char*,int const*,size_t) ;

__attribute__((used)) static char * wpa_config_write_string_ascii(const u8 *value, size_t len)
{
 char *buf;

 buf = os_malloc(len + 3);
 if (buf == ((void*)0))
  return ((void*)0);
 buf[0] = '"';
 os_memcpy(buf + 1, value, len);
 buf[len + 1] = '"';
 buf[len + 2] = '\0';

 return buf;
}
