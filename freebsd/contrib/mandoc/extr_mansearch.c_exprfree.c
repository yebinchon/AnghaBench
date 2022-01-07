
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {struct expr* child; struct expr* next; } ;


 int free (struct expr*) ;

__attribute__((used)) static void
exprfree(struct expr *e)
{
 if (e->next != ((void*)0))
  exprfree(e->next);
 if (e->child != ((void*)0))
  exprfree(e->child);
 free(e);
}
