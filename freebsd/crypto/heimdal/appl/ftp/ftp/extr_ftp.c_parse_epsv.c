
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int htons (int) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static int
parse_epsv (const char *str)
{
    char sep;
    char *end;
    int port;

    if (*str == '\0')
 return -1;
    sep = *str++;
    if (sep != *str++)
 return -1;
    if (sep != *str++)
 return -1;
    port = strtol (str, &end, 0);
    if (str == end)
 return -1;
    if (end[0] != sep || end[1] != '\0')
 return -1;
    return htons(port);
}
