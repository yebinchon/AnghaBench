
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *skip_scheme_part(const char *url)
{
  if (strncmp(url, "svn", 3) != 0)
    return ((void*)0);
  url += 3;
  if (*url == '+')
    url += strcspn(url, ":");
  if (strncmp(url, "://", 3) != 0)
    return ((void*)0);
  return url + 3;
}
