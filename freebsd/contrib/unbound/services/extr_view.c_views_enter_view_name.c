
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct views {int lock; int vtree; } ;
struct view {int lock; int node; } ;


 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int log_err (char*) ;
 int log_warn (char*,char*) ;
 int rbtree_insert (int *,int *) ;
 struct view* view_create (char*) ;
 int view_delete (struct view*) ;

__attribute__((used)) static struct view*
views_enter_view_name(struct views* vs, char* name)
{
 struct view* v = view_create(name);
 if(!v) {
  log_err("out of memory");
  return ((void*)0);
 }


 lock_rw_wrlock(&vs->lock);
 lock_rw_wrlock(&v->lock);
 if(!rbtree_insert(&vs->vtree, &v->node)) {
  log_warn("duplicate view: %s", name);
  lock_rw_unlock(&v->lock);
  view_delete(v);
  lock_rw_unlock(&vs->lock);
  return ((void*)0);
 }
 lock_rw_unlock(&vs->lock);
 return v;
}
