
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {scalar_t__ d; int visit_type; int flags; TYPE_1__* stack; TYPE_1__* current; } ;
struct TYPE_4__ {int s; } ;
struct TYPE_3__ {int flags; TYPE_2__ name; } ;


 scalar_t__ INVALID_DIR_HANDLE ;
 int TREE_POSTASCENT ;
 int TREE_POSTDESCENT ;
 int TREE_REGULAR ;
 int archive_strlen (TYPE_2__*) ;
 int hasLstat ;
 int hasStat ;
 int needsAscent ;
 int needsDescent ;
 int needsFirstVisit ;
 int needsOpen ;
 int tree_append (struct tree*,int ,int ) ;
 int tree_ascend (struct tree*) ;
 int tree_descent (struct tree*) ;
 int tree_dir_next_posix (struct tree*) ;
 int tree_pop (struct tree*) ;

__attribute__((used)) static int
tree_next(struct tree *t)
{
 int r;

 while (t->stack != ((void*)0)) {

  if (t->d != INVALID_DIR_HANDLE) {
   r = tree_dir_next_posix(t);
   if (r == 0)
    continue;
   return (r);
  }

  if (t->stack->flags & needsFirstVisit) {

   t->current = t->stack;
   tree_append(t, t->stack->name.s,
       archive_strlen(&(t->stack->name)));


   t->stack->flags &= ~needsFirstVisit;
   return (t->visit_type = TREE_REGULAR);
  } else if (t->stack->flags & needsDescent) {

   t->current = t->stack;
   tree_append(t, t->stack->name.s,
       archive_strlen(&(t->stack->name)));
   t->stack->flags &= ~needsDescent;
   r = tree_descent(t);
   if (r != 0) {
    tree_pop(t);
    t->visit_type = r;
   } else
    t->visit_type = TREE_POSTDESCENT;
   return (t->visit_type);
  } else if (t->stack->flags & needsOpen) {
   t->stack->flags &= ~needsOpen;
   r = tree_dir_next_posix(t);
   if (r == 0)
    continue;
   return (r);
  } else if (t->stack->flags & needsAscent) {

   r = tree_ascend(t);
   tree_pop(t);
   t->visit_type = r != 0 ? r : TREE_POSTASCENT;
   return (t->visit_type);
  } else {

   tree_pop(t);
   t->flags &= ~hasLstat;
   t->flags &= ~hasStat;
  }
 }
 return (t->visit_type = 0);
}
