
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash {int dummy; } ;
struct expr {struct expr* next; } ;


 struct ohash* manmerge (struct expr*,struct ohash*) ;

__attribute__((used)) static struct ohash *
manmerge_or(struct expr *e, struct ohash *htab)
{
 while (e != ((void*)0)) {
  htab = manmerge(e, htab);
  e = e->next;
 }
 return htab;
}
