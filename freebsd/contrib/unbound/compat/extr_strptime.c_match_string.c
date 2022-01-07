
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static int
match_string(const char **buf, const char **strs)
{
 int i = 0;

 for (i = 0; strs[i] != ((void*)0); i++) {
  int len = strlen(strs[i]);
  if (strncasecmp (*buf, strs[i], len) == 0) {
   *buf += len;
   return i;
  }
 }
 return -1;
}
