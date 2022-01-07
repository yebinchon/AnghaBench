
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char const*,char const*) ;

__attribute__((used)) static int
get_type(const char *name, const char *list[], unsigned len)
{
    unsigned i;
    for (i = 0; i < len; i++)
 if (list[i] && strcasecmp(list[i], name) == 0)
     return i;
    return -1;
}
