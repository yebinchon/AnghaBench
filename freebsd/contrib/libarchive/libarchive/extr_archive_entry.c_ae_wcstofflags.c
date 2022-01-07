
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct flag {unsigned long set; unsigned long clear; int * wname; } ;


 struct flag* flags ;
 size_t wcslen (int *) ;
 scalar_t__ wmemcmp (int const*,int *,size_t) ;

__attribute__((used)) static const wchar_t *
ae_wcstofflags(const wchar_t *s, unsigned long *setp, unsigned long *clrp)
{
 const wchar_t *start, *end;
 const struct flag *flag;
 unsigned long set, clear;
 const wchar_t *failed;

 set = clear = 0;
 start = s;
 failed = ((void*)0);

 while (*start == L'\t' || *start == L' ' || *start == L',')
  start++;
 while (*start != L'\0') {
  size_t length;

  end = start;
  while (*end != L'\0' && *end != L'\t' &&
      *end != L' ' && *end != L',')
   end++;
  length = end - start;
  for (flag = flags; flag->wname != ((void*)0); flag++) {
   size_t flag_length = wcslen(flag->wname);
   if (length == flag_length
       && wmemcmp(start, flag->wname, length) == 0) {

    clear |= flag->set;
    set |= flag->clear;
    break;
   } else if (length == flag_length - 2
       && wmemcmp(start, flag->wname + 2, length) == 0) {

    set |= flag->set;
    clear |= flag->clear;
    break;
   }
  }

  if (flag->wname == ((void*)0) && failed == ((void*)0))
   failed = start;


  start = end;
  while (*start == L'\t' || *start == L' ' || *start == L',')
   start++;

 }

 if (setp)
  *setp = set;
 if (clrp)
  *clrp = clear;


 return (failed);
}
