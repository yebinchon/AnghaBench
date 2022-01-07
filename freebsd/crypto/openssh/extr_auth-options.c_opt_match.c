
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static int
opt_match(const char **opts, const char *term)
{
 if (strncasecmp((*opts), term, strlen(term)) == 0 &&
     (*opts)[strlen(term)] == '=') {
  *opts += strlen(term) + 1;
  return 1;
 }
 return 0;
}
