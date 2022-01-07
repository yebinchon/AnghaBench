
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mansearch {int dummy; } ;
struct expr {struct expr* next; struct expr* child; int type; } ;


 int EXPR_AND ;
 void* exprterm (struct mansearch const*,int,char**,int*) ;
 struct expr* mandoc_calloc (int,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static struct expr *
expr_and(const struct mansearch *search, int argc, char *argv[], int *argi)
{
 struct expr *parent, *child;
 int needterm;

 needterm = 1;
 parent = child = ((void*)0);
 while (*argi < argc) {
  if (strcmp(")", argv[*argi]) == 0) {
   if (needterm)
    warnx("missing term "
        "before closing parenthesis");
   needterm = 0;
   break;
  }
  if (strcmp("-o", argv[*argi]) == 0)
   break;
  if (strcmp("-a", argv[*argi]) == 0) {
   if (needterm) {
    if (*argi > 0)
     warnx("ignoring -a after %s",
         argv[*argi - 1]);
    else
     warnx("ignoring initial -a");
   }
   needterm = 1;
   ++*argi;
   continue;
  }
  if (needterm == 0)
   break;
  if (child == ((void*)0)) {
   child = exprterm(search, argc, argv, argi);
   if (child != ((void*)0))
    needterm = 0;
   continue;
  }
  needterm = 0;
  if (parent == ((void*)0)) {
   parent = mandoc_calloc(1, sizeof(*parent));
   parent->type = EXPR_AND;
   parent->next = ((void*)0);
   parent->child = child;
  }
  child->next = exprterm(search, argc, argv, argi);
  if (child->next != ((void*)0)) {
   child = child->next;
   needterm = 0;
  }
 }
 if (needterm && *argi)
  warnx("ignoring trailing %s", argv[*argi - 1]);
 return parent == ((void*)0) ? child : parent;
}
