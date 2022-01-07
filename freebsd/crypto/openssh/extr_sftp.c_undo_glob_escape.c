
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
undo_glob_escape(char *s)
{
 size_t i, j;

 for (i = j = 0;;) {
  if (s[i] == '\0') {
   s[j] = '\0';
   return;
  }
  if (s[i] != '\\') {
   s[j++] = s[i++];
   continue;
  }

  ++i;
  switch (s[i]) {
  case '?':
  case '[':
  case '*':
  case '\\':
   s[j++] = s[i++];
   break;
  case '\0':
   s[j++] = '\\';
   s[j] = '\0';
   return;
  default:
   s[j++] = '\\';
   s[j++] = s[i++];
   break;
  }
 }
}
