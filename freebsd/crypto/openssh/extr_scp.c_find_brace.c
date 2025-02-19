
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;

__attribute__((used)) static int
find_brace(const char *pattern, int *startp, int *endp)
{
 int i;
 int in_bracket, brace_level;

 *startp = *endp = -1;
 in_bracket = brace_level = 0;
 for (i = 0; i < INT_MAX && *endp < 0 && pattern[i] != '\0'; i++) {
  switch (pattern[i]) {
  case '\\':

   if (pattern[i + 1] != '\0')
    i++;
   break;
  case '[':
   in_bracket = 1;
   break;
  case ']':
   in_bracket = 0;
   break;
  case '{':
   if (in_bracket)
    break;
   if (pattern[i + 1] == '}') {

    i++;
    break;
   }
   if (*startp == -1)
    *startp = i;
   brace_level++;
   break;
  case '}':
   if (in_bracket)
    break;
   if (*startp < 0) {

    return -1;
   }
   if (--brace_level <= 0)
    *endp = i;
   break;
  }
 }

 if (*endp < 0 && (*startp >= 0 || in_bracket))
  return -1;
 return 0;
}
