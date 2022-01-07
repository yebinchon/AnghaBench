
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* posix_spawn_file_actions_t ;
struct TYPE_8__ {int fae_fildes; int fae_oflag; int fae_mode; int * fae_path; int fae_action; } ;
typedef TYPE_2__ posix_spawn_file_actions_entry_t ;
typedef int mode_t ;
struct TYPE_7__ {int fa_list; } ;


 int EBADF ;
 int FAE_OPEN ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int errno ;
 int fae_list ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int * strdup (char const*) ;

int
posix_spawn_file_actions_addopen(posix_spawn_file_actions_t * __restrict fa,
    int fildes, const char * __restrict path, int oflag, mode_t mode)
{
 posix_spawn_file_actions_entry_t *fae;
 int error;

 if (fildes < 0)
  return (EBADF);


 fae = malloc(sizeof(posix_spawn_file_actions_entry_t));
 if (fae == ((void*)0))
  return (errno);


 fae->fae_action = FAE_OPEN;
 fae->fae_path = strdup(path);
 if (fae->fae_path == ((void*)0)) {
  error = errno;
  free(fae);
  return (error);
 }
 fae->fae_fildes = fildes;
 fae->fae_oflag = oflag;
 fae->fae_mode = mode;

 STAILQ_INSERT_TAIL(&(*fa)->fa_list, fae, fae_list);
 return (0);
}
