
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* posix_spawn_file_actions_t ;
struct TYPE_6__ {scalar_t__ fae_action; struct TYPE_6__* fae_path; int fa_list; } ;
typedef TYPE_1__ posix_spawn_file_actions_entry_t ;


 scalar_t__ FAE_OPEN ;
 TYPE_1__* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int fae_list ;
 int free (TYPE_1__*) ;

int
posix_spawn_file_actions_destroy(posix_spawn_file_actions_t *fa)
{
 posix_spawn_file_actions_entry_t *fae;

 while ((fae = STAILQ_FIRST(&(*fa)->fa_list)) != ((void*)0)) {

  STAILQ_REMOVE_HEAD(&(*fa)->fa_list, fae_list);


  if (fae->fae_action == FAE_OPEN)
   free(fae->fae_path);
  free(fae);
 }

 free(*fa);
 return (0);
}
