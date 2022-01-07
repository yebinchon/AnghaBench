
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 char* el_calloc (size_t,int) ;

__attribute__((used)) static wchar_t *
unescape_string(const wchar_t *string, size_t length)
{
 size_t i;
 size_t j = 0;
 wchar_t *unescaped = el_calloc(length + 1, sizeof(*string));
 if (unescaped == ((void*)0))
  return ((void*)0);
 for (i = 0; i < length ; i++) {
  if (string[i] == '\\')
   continue;
  unescaped[j++] = string[i];
 }
 unescaped[j] = 0;
 return unescaped;
}
