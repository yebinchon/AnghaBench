
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash {int dummy; } ;
struct expr {int type; int child; } ;





 int abort () ;
 struct ohash* manmerge_and (int ,struct ohash*) ;
 struct ohash* manmerge_or (int ,struct ohash*) ;
 struct ohash* manmerge_term (struct expr*,struct ohash*) ;

__attribute__((used)) static struct ohash *
manmerge(struct expr *e, struct ohash *htab)
{
 switch (e->type) {
 case 128:
  return manmerge_term(e, htab);
 case 129:
  return manmerge_or(e->child, htab);
 case 130:
  return manmerge_and(e->child, htab);
 default:
  abort();
 }
}
