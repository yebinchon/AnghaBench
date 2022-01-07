
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int _TRUNCATE ;
 int _vsnprintf_s (char*,size_t,int ,char const*,int ) ;

int
pcap_vsnprintf(char *str, size_t str_size, const char *format, va_list args)
{
 int ret;

 ret = _vsnprintf_s(str, str_size, _TRUNCATE, format, args);







 str[str_size - 1] = '\0';
 return (ret);
}
