
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (char*) ;
 char* os_strdup (char const*) ;

__attribute__((used)) static void clone_str(char **dst, const char *src)
{
 os_free(*dst);
 if (src)
  *dst = os_strdup(src);
 else
  *dst = ((void*)0);
}
