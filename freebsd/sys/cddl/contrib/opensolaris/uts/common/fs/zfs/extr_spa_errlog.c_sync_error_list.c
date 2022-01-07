
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_10__ {char* se_name; int se_bookmark; } ;
typedef TYPE_2__ spa_error_entry_t ;
typedef int dmu_tx_t ;
typedef int buf ;
typedef int avl_tree_t ;


 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 int DMU_OT_ERROR_LOG ;
 int DMU_OT_NONE ;
 TYPE_2__* avl_destroy_nodes (int *,void**) ;
 TYPE_2__* avl_first (int *) ;
 scalar_t__ avl_numnodes (int *) ;
 int bookmark_to_name (int *,char*,int) ;
 int kmem_free (TYPE_2__*,int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ zap_create (int ,int ,int ,int ,int *) ;
 int zap_update (int ,scalar_t__,char*,int,scalar_t__,char*,int *) ;

__attribute__((used)) static void
sync_error_list(spa_t *spa, avl_tree_t *t, uint64_t *obj, dmu_tx_t *tx)
{
 spa_error_entry_t *se;
 char buf[64];
 void *cookie;

 if (avl_numnodes(t) != 0) {

  if (*obj == 0)
   *obj = zap_create(spa->spa_meta_objset,
       DMU_OT_ERROR_LOG, DMU_OT_NONE,
       0, tx);


  for (se = avl_first(t); se != ((void*)0); se = AVL_NEXT(t, se)) {
   char *name = se->se_name ? se->se_name : "";

   bookmark_to_name(&se->se_bookmark, buf, sizeof (buf));

   (void) zap_update(spa->spa_meta_objset,
       *obj, buf, 1, strlen(name) + 1, name, tx);
  }


  cookie = ((void*)0);
  while ((se = avl_destroy_nodes(t, &cookie)) != ((void*)0))
   kmem_free(se, sizeof (spa_error_entry_t));
 }
}
