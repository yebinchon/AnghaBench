
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
pm_slashskip(const char *s) {
 while ((*s == '/')
     || (s[0] == '.' && s[1] == '/')
     || (s[0] == '.' && s[1] == '\0'))
  ++s;
 return (s);
}
