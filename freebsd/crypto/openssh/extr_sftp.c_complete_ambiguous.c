
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 size_t strlen (char const*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
complete_ambiguous(const char *word, char **list, size_t count)
{
 if (word == ((void*)0))
  return ((void*)0);

 if (count > 0) {
  u_int y, matchlen = strlen(list[0]);


  for (y = 1; list[y]; y++) {
   u_int x;

   for (x = 0; x < matchlen; x++)
    if (list[0][x] != list[y][x])
     break;

   matchlen = x;
  }

  if (matchlen > strlen(word)) {
   char *tmp = xstrdup(list[0]);

   tmp[matchlen] = '\0';
   return tmp;
  }
 }

 return xstrdup(word);
}
