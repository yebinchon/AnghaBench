
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

bool
db_eqname(const char *src, const char *dst, int c)
{
 if (!strcmp(src, dst))
     return (1);
 if (src[0] == c)
     return (!strcmp(src+1,dst));
 return (0);
}
