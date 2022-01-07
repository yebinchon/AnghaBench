
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int
isundefarg(const char *arg)
{
 return (strcmp(arg, "-") == 0 || strncasecmp(arg, "undef", 5) == 0);
}
