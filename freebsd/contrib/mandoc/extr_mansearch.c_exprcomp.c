
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mansearch {int dummy; } ;
struct expr {struct expr* next; struct expr* child; int type; } ;


 int EXPR_OR ;
 void* expr_and (struct mansearch const*,int,char**,int*) ;
 struct expr* mandoc_calloc (int,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static struct expr *
exprcomp(const struct mansearch *search, int argc, char *argv[], int *argi)
{
 struct expr *parent, *child;
 int needterm, nested;

 if ((nested = *argi) == argc)
  return ((void*)0);
 needterm = 1;
 parent = child = ((void*)0);
 while (*argi < argc) {
  if (strcmp(")", argv[*argi]) == 0) {
   if (needterm)
    warnx("missing term "
        "before closing parenthesis");
   needterm = 0;
   if (nested)
    break;
   warnx("ignoring unmatched right parenthesis");
   ++*argi;
   continue;
  }
  if (strcmp("-o", argv[*argi]) == 0) {
   if (needterm) {
    if (*argi > 0)
     warnx("ignoring -o after %s",
         argv[*argi - 1]);
    else
     warnx("ignoring initial -o");
   }
   needterm = 1;
   ++*argi;
   continue;
  }
  needterm = 0;
  if (child == ((void*)0)) {
   child = expr_and(search, argc, argv, argi);
   continue;
  }
  if (parent == ((void*)0)) {
   parent = mandoc_calloc(1, sizeof(*parent));
   parent->type = EXPR_OR;
   parent->next = ((void*)0);
   parent->child = child;
  }
  child->next = expr_and(search, argc, argv, argi);
  child = child->next;
 }
 if (needterm && *argi)
  warnx("ignoring trailing %s", argv[*argi - 1]);
 return parent == ((void*)0) ? child : parent;
}
