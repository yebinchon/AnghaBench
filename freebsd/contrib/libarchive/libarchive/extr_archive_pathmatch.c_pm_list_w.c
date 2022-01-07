
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static int
pm_list_w(const wchar_t *start, const wchar_t *end, const wchar_t c, int flags)
{
 const wchar_t *p = start;
 wchar_t rangeStart = L'\0', nextRangeStart;
 int match = 1, nomatch = 0;


 (void)flags;


 if ((*p == L'!' || *p == L'^') && p < end) {
  match = 0;
  nomatch = 1;
  ++p;
 }

 while (p < end) {
  nextRangeStart = L'\0';
  switch (*p) {
  case L'-':

   if ((rangeStart == L'\0') || (p == end - 1)) {
    if (*p == c)
     return (match);
   } else {
    wchar_t rangeEnd = *++p;
    if (rangeEnd == L'\\')
     rangeEnd = *++p;
    if ((rangeStart <= c) && (c <= rangeEnd))
     return (match);
   }
   break;
  case L'\\':
   ++p;

  default:
   if (*p == c)
    return (match);
   nextRangeStart = *p;
  }
  rangeStart = nextRangeStart;
  ++p;
 }
 return (nomatch);
}
