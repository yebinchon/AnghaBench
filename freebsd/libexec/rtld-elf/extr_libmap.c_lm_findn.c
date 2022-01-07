
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathbuf ;


 int free (char*) ;
 char* lm_find (char const*,char*) ;
 int memcpy (char*,char const*,size_t const) ;
 char* xmalloc (size_t const) ;

char *
lm_findn(const char *p, const char *f, const size_t n)
{
 char pathbuf[64], *s, *t;

 if (n < sizeof(pathbuf) - 1)
  s = pathbuf;
 else
  s = xmalloc(n + 1);
 memcpy(s, f, n);
 s[n] = '\0';
 t = lm_find(p, s);
 if (s != pathbuf)
  free(s);
 return (t);
}
