
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* posix_spawn_file_actions_t ;
struct TYPE_7__ {int fae_fildes; int fae_newfildes; int fae_action; } ;
typedef TYPE_2__ posix_spawn_file_actions_entry_t ;
struct TYPE_6__ {int fa_list; } ;


 int EBADF ;
 int FAE_DUP2 ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int errno ;
 int fae_list ;
 TYPE_2__* malloc (int) ;

int
posix_spawn_file_actions_adddup2(posix_spawn_file_actions_t *fa,
    int fildes, int newfildes)
{
 posix_spawn_file_actions_entry_t *fae;

 if (fildes < 0 || newfildes < 0)
  return (EBADF);


 fae = malloc(sizeof(posix_spawn_file_actions_entry_t));
 if (fae == ((void*)0))
  return (errno);


 fae->fae_action = FAE_DUP2;
 fae->fae_fildes = fildes;
 fae->fae_newfildes = newfildes;

 STAILQ_INSERT_TAIL(&(*fa)->fa_list, fae, fae_list);
 return (0);
}
