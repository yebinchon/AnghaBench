
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int avl_tree_t ;
typedef int avl_index_t ;
struct TYPE_9__ {int key; } ;
typedef TYPE_1__ acevals_t ;
struct TYPE_10__ {int a_who; } ;
typedef TYPE_2__ ace_t ;


 int acevals_init (TYPE_1__*,int ) ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int avl_insert (int *,TYPE_1__*,int ) ;
 scalar_t__ cacl_malloc (void**,int) ;

__attribute__((used)) static acevals_t *
acevals_find(ace_t *ace, avl_tree_t *avl, int *num)
{
 acevals_t key, *rc;
 avl_index_t where;

 key.key = ace->a_who;
 rc = avl_find(avl, &key, &where);
 if (rc != ((void*)0))
  return (rc);


 if (cacl_malloc((void **)&rc, sizeof (acevals_t)) != 0)
  return (((void*)0));

 acevals_init(rc, ace->a_who);
 avl_insert(avl, rc, where);
 (*num)++;

 return (rc);
}
