
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,unsigned int*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
parse_integer(unsigned int *u, const char *s)
{
    if(strcmp(s, "-") == 0)
 return 0;
    if (sscanf(s, "%u", u) != 1)
 return -1;
    return 1;
}
