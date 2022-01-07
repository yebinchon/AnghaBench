
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,char*) ;

__attribute__((used)) static int
is_addr_fast(const char *name)
{
 return (strchr(name, '%') != ((void*)0) || strchr(name, ':') != ((void*)0) ||
     strspn(name, "0123456789.") == strlen(name));
}
