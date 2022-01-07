
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 char* os_strchr (char const*,char) ;

__attribute__((used)) static int hostapd_config_read_int10(const char *value)
{
 int i, d;
 char *pos;

 i = atoi(value);
 pos = os_strchr(value, '.');
 d = 0;
 if (pos) {
  pos++;
  if (*pos >= '0' && *pos <= '9')
   d = *pos - '0';
 }

 return i * 10 + d;
}
