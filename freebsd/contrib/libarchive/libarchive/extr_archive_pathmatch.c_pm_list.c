
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
pm_list(const char *start, const char *end, const char c, int flags)
{
 const char *p = start;
 char rangeStart = '\0', nextRangeStart;
 int match = 1, nomatch = 0;


 (void)flags;


 if ((*p == '!' || *p == '^') && p < end) {
  match = 0;
  nomatch = 1;
  ++p;
 }

 while (p < end) {
  nextRangeStart = '\0';
  switch (*p) {
  case '-':

   if ((rangeStart == '\0') || (p == end - 1)) {
    if (*p == c)
     return (match);
   } else {
    char rangeEnd = *++p;
    if (rangeEnd == '\\')
     rangeEnd = *++p;
    if ((rangeStart <= c) && (c <= rangeEnd))
     return (match);
   }
   break;
  case '\\':
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
