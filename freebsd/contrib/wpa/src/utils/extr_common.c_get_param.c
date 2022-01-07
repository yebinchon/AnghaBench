
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,size_t) ;
 char* os_strchr (char const*,char) ;
 size_t os_strlen (char const*) ;
 char* os_strstr (char const*,char const*) ;

char * get_param(const char *cmd, const char *param)
{
 const char *pos, *end;
 char *val;
 size_t len;

 pos = os_strstr(cmd, param);
 if (!pos)
  return ((void*)0);

 pos += os_strlen(param);
 end = os_strchr(pos, ' ');
 if (end)
  len = end - pos;
 else
  len = os_strlen(pos);
 val = os_malloc(len + 1);
 if (!val)
  return ((void*)0);
 os_memcpy(val, pos, len);
 val[len] = '\0';
 return val;
}
