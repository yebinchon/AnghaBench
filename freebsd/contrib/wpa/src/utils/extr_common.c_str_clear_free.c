
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int forced_memzero (char*,size_t) ;
 int os_free (char*) ;
 size_t os_strlen (char*) ;

void str_clear_free(char *str)
{
 if (str) {
  size_t len = os_strlen(str);
  forced_memzero(str, len);
  os_free(str);
 }
}
