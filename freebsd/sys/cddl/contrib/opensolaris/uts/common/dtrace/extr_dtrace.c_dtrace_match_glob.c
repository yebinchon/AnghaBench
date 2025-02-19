
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACE_PROBEKEY_MAXDEPTH ;

__attribute__((used)) static int
dtrace_match_glob(const char *s, const char *p, int depth)
{
 const char *olds;
 char s1, c;
 int gs;

 if (depth > DTRACE_PROBEKEY_MAXDEPTH)
  return (-1);

 if (s == ((void*)0))
  s = "";

top:
 olds = s;
 s1 = *s++;

 if (p == ((void*)0))
  return (0);

 if ((c = *p++) == '\0')
  return (s1 == '\0');

 switch (c) {
 case '[': {
  int ok = 0, notflag = 0;
  char lc = '\0';

  if (s1 == '\0')
   return (0);

  if (*p == '!') {
   notflag = 1;
   p++;
  }

  if ((c = *p++) == '\0')
   return (0);

  do {
   if (c == '-' && lc != '\0' && *p != ']') {
    if ((c = *p++) == '\0')
     return (0);
    if (c == '\\' && (c = *p++) == '\0')
     return (0);

    if (notflag) {
     if (s1 < lc || s1 > c)
      ok++;
     else
      return (0);
    } else if (lc <= s1 && s1 <= c)
     ok++;

   } else if (c == '\\' && (c = *p++) == '\0')
    return (0);

   lc = c;

   if (notflag) {
    if (s1 != c)
     ok++;
    else
     return (0);
   } else if (s1 == c)
    ok++;

   if ((c = *p++) == '\0')
    return (0);

  } while (c != ']');

  if (ok)
   goto top;

  return (0);
 }

 case '\\':
  if ((c = *p++) == '\0')
   return (0);


 default:
  if (c != s1)
   return (0);


 case '?':
  if (s1 != '\0')
   goto top;
  return (0);

 case '*':
  while (*p == '*')
   p++;

  if (*p == '\0')
   return (1);

  for (s = olds; *s != '\0'; s++) {
   if ((gs = dtrace_match_glob(s, p, depth + 1)) != 0)
    return (gs);
  }

  return (0);
 }
}
