
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; int name; struct TYPE_6__* next; struct TYPE_6__* child; } ;
typedef TYPE_1__ NODE ;


 scalar_t__ F_DIR ;
 int asprintf (char**,char*,char const*,int ) ;
 int compare_nodes (TYPE_1__*,TYPE_1__*,char const*) ;
 int free (char*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
walk_in_the_forest(NODE *t1, NODE *t2, char const *path)
{
 int r, i;
 NODE *c1, *c2, *n1, *n2;
 char *np;

 r = 0;

 if (t1 != ((void*)0))
  c1 = t1->child;
 else
  c1 = ((void*)0);
 if (t2 != ((void*)0))
  c2 = t2->child;
 else
  c2 = ((void*)0);
 while (c1 != ((void*)0) || c2 != ((void*)0)) {
  n1 = n2 = ((void*)0);
  if (c1 != ((void*)0))
   n1 = c1->next;
  if (c2 != ((void*)0))
   n2 = c2->next;
  if (c1 != ((void*)0) && c2 != ((void*)0)) {
   if (c1->type != F_DIR && c2->type == F_DIR) {
    n2 = c2;
    c2 = ((void*)0);
   } else if (c1->type == F_DIR && c2->type != F_DIR) {
    n1 = c1;
    c1 = ((void*)0);
   } else {
    i = strcmp(c1->name, c2->name);
    if (i > 0) {
     n1 = c1;
     c1 = ((void*)0);
    } else if (i < 0) {
     n2 = c2;
     c2 = ((void*)0);
    }
   }
  }
  if (c1 == ((void*)0) && c2->type == F_DIR) {
   asprintf(&np, "%s%s/", path, c2->name);
   i = walk_in_the_forest(c1, c2, np);
   free(np);
   i += compare_nodes(c1, c2, path);
  } else if (c2 == ((void*)0) && c1->type == F_DIR) {
   asprintf(&np, "%s%s/", path, c1->name);
   i = walk_in_the_forest(c1, c2, np);
   free(np);
   i += compare_nodes(c1, c2, path);
  } else if (c1 == ((void*)0) || c2 == ((void*)0)) {
   i = compare_nodes(c1, c2, path);
  } else if (c1->type == F_DIR && c2->type == F_DIR) {
   asprintf(&np, "%s%s/", path, c1->name);
   i = walk_in_the_forest(c1, c2, np);
   free(np);
   i += compare_nodes(c1, c2, path);
  } else {
   i = compare_nodes(c1, c2, path);
  }
  r += i;
  c1 = n1;
  c2 = n2;
 }
 return (r);
}
