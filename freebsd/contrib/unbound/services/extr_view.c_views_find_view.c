
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct views {int lock; int vtree; } ;
struct TYPE_2__ {struct view** key; } ;
struct view {char* name; int lock; TYPE_1__ node; } ;


 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 scalar_t__ rbtree_search (int *,TYPE_1__*) ;

struct view*
views_find_view(struct views* vs, const char* name, int write)
{
 struct view* v;
 struct view key;
 key.node.key = &v;
 key.name = (char *)name;
 lock_rw_rdlock(&vs->lock);
 if(!(v = (struct view*)rbtree_search(&vs->vtree, &key.node))) {
  lock_rw_unlock(&vs->lock);
  return 0;
 }
 if(write) {
  lock_rw_wrlock(&v->lock);
 } else {
  lock_rw_rdlock(&v->lock);
 }
 lock_rw_unlock(&vs->lock);
 return v;
}
