
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_strncmp (char const*,char const*,size_t) ;

int os_strncasecmp(const char *s1, const char *s2, size_t n)
{




 return os_strncmp(s1, s2, n);
}
