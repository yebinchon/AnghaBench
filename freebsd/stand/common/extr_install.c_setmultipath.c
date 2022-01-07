
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char** calloc (int,int) ;
 int setpath (char**,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
setmultipath(char ***what, char *val)
{
 char *s, *v;
 int count, error, idx;

 count = 0;
 v = val;
 do {
  count++;
  s = strchr(v, ',');
  v = (s == ((void*)0)) ? ((void*)0) : s + 1;
 } while (v != ((void*)0));

 *what = calloc(count + 1, sizeof(char *));
 if (*what == ((void*)0))
  return (ENOMEM);

 for (idx = 0; idx < count; idx++) {
  s = strchr(val, ',');
  if (s != ((void*)0))
   *s++ = '\0';
  error = setpath(*what + idx, val);
  if (error)
   return (error);
  val = s;
 }

 return (0);
}
