
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int group; int user; } ;
typedef TYPE_1__ acevals_t ;
typedef TYPE_1__ ace_list_t ;


 int avl_destroy (int *) ;
 TYPE_1__* avl_destroy_nodes (int *,void**) ;
 int cacl_free (TYPE_1__*,int) ;

__attribute__((used)) static void
ace_list_free(ace_list_t *al)
{
 acevals_t *node;
 void *cookie;

 if (al == ((void*)0))
  return;

 cookie = ((void*)0);
 while ((node = avl_destroy_nodes(&al->user, &cookie)) != ((void*)0))
  cacl_free(node, sizeof (acevals_t));
 cookie = ((void*)0);
 while ((node = avl_destroy_nodes(&al->group, &cookie)) != ((void*)0))
  cacl_free(node, sizeof (acevals_t));

 avl_destroy(&al->user);
 avl_destroy(&al->group);


 cacl_free(al, sizeof (ace_list_t));
}
