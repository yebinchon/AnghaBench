
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static const wchar_t *
pm_slashskip_w(const wchar_t *s) {
 while ((*s == L'/')
     || (s[0] == L'.' && s[1] == L'/')
     || (s[0] == L'.' && s[1] == L'\0'))
  ++s;
 return (s);
}
