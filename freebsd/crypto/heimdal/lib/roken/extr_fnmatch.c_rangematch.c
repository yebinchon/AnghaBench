
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char EOS ;
 int FNM_NOESCAPE ;

__attribute__((used)) static const char *
rangematch(const char *pattern, int test, int flags)
{
 int negate, ok;
 char c, c2;
 if (negate = (*pattern == '!' || *pattern == '^'))
  ++pattern;

 for (ok = 0; (c = *pattern++) != ']';) {
  if (c == '\\' && !(flags & FNM_NOESCAPE))
   c = *pattern++;
  if (c == EOS)
   return (((void*)0));
  if (*pattern == '-'
      && (c2 = *(pattern+1)) != EOS && c2 != ']') {
   pattern += 2;
   if (c2 == '\\' && !(flags & FNM_NOESCAPE))
    c2 = *pattern++;
   if (c2 == EOS)
    return (((void*)0));
   if (c <= test && test <= c2)
    ok = 1;
  } else if (c == test)
   ok = 1;
 }
 return (ok == negate ? ((void*)0) : pattern);
}
