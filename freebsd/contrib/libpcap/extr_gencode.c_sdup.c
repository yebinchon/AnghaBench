
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compiler_state_t ;


 char* newchunk (int *,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *
sdup(compiler_state_t *cstate, const char *s)
{
 size_t n = strlen(s) + 1;
 char *cp = newchunk(cstate, n);

 strlcpy(cp, s, n);
 return (cp);
}
