
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



wchar_t *
wcstok(wchar_t * __restrict s, const wchar_t * __restrict delim,
    wchar_t ** __restrict last)
{
 const wchar_t *spanp;
 wchar_t *tok;
 wchar_t c, sc;

 if (s == ((void*)0) && (s = *last) == ((void*)0))
  return (((void*)0));




cont:
 c = *s++;
 for (spanp = delim; (sc = *spanp++) != L'\0';) {
  if (c == sc)
   goto cont;
 }

 if (c == L'\0') {
  *last = ((void*)0);
  return (((void*)0));
 }
 tok = s - 1;





 for (;;) {
  c = *s++;
  spanp = delim;
  do {
   if ((sc = *spanp++) == c) {
    if (c == L'\0')
     s = ((void*)0);
    else
     s[-1] = L'\0';
    *last = s;
    return (tok);
   }
  } while (sc != L'\0');
 }

}
