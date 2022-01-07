
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,size_t) ;
 int stderr ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static void
checkcomment(const char *s, size_t lineno)
{
 if (s && strstr(s, "BUG") != ((void*)0))
  fprintf(stderr, "Expected %s at line %zu\n", s, lineno);
}
