
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct parse {int dummy; } ;
struct TYPE_3__ {size_t smultis; int * multis; } ;
typedef TYPE_1__ cset ;


 int REG_ESPACE ;
 int SETERROR (int ) ;
 int free (int *) ;
 void* realloc (int *,size_t) ;
 int strlcpy (int *,char const*,size_t) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
mcadd(struct parse *p, cset *cs, const char *cp)
{
 size_t oldend = cs->smultis;
 void *np;

 cs->smultis += strlen(cp) + 1;
 np = realloc(cs->multis, cs->smultis);
 if (np == ((void*)0)) {
  if (cs->multis)
   free(cs->multis);
  cs->multis = ((void*)0);
  SETERROR(REG_ESPACE);
  return;
 }
 cs->multis = np;

 strlcpy(cs->multis + oldend - 1, cp, cs->smultis - oldend + 1);
}
