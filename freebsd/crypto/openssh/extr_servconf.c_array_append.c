
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int INT_MAX ;
 int fatal (char*,char const*,int const,char const*) ;
 char** xrecallocarray (char**,int,int,int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
array_append(const char *file, const int line, const char *directive,
    char ***array, u_int *lp, const char *s)
{

 if (*lp >= INT_MAX)
  fatal("%s line %d: Too many %s entries", file, line, directive);

 *array = xrecallocarray(*array, *lp, *lp + 1, sizeof(**array));
 (*array)[*lp] = xstrdup(s);
 (*lp)++;
}
