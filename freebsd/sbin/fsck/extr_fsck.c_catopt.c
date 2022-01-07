
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* erealloc (char*,size_t) ;
 char* estrdup (char const*) ;
 int snprintf (char*,size_t,char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
catopt(char **sp, const char *o)
{
 char *s;
 size_t i, j;

 s = *sp;
 if (s) {
  i = strlen(s);
  j = i + 1 + strlen(o) + 1;
  s = erealloc(s, j);
  (void)snprintf(s + i, j, ",%s", o);
 } else
  s = estrdup(o);
 *sp = s;
}
