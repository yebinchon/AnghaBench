
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct view* key; } ;
struct view {int name; int lock; TYPE_1__ node; } ;
typedef int rbnode_type ;


 scalar_t__ calloc (int,int) ;
 int free (struct view*) ;
 int lock_protect (int *,int *,int) ;
 int lock_rw_init (int *) ;
 int strdup (char*) ;

__attribute__((used)) static struct view*
view_create(char* name)
{
 struct view* v = (struct view*)calloc(1, sizeof(*v));
 if(!v)
  return ((void*)0);
 v->node.key = v;
 if(!(v->name = strdup(name))) {
  free(v);
  return ((void*)0);
 }
 lock_rw_init(&v->lock);
 lock_protect(&v->lock, &v->name, sizeof(*v)-sizeof(rbnode_type));
 return v;
}
