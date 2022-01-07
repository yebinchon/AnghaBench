
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * reqnames ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,int ,size_t) ;
 int strtoul (char const*,int ,int ) ;

__attribute__((used)) static int
get_req(const char *reqname)
{
  size_t i;
  size_t l = strlen(reqname);

  for (i = 0;
       i < sizeof reqnames / sizeof reqnames[0];
       i++)
    if (strncasecmp(reqname, reqnames[i], l) == 0)
      return i;

  return strtoul(reqname, 0, 0);
}
