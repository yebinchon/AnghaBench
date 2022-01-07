
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct __posix_spawn_file_actions {int dummy; } ;
typedef TYPE_1__* posix_spawn_file_actions_t ;
struct TYPE_4__ {int fa_list; } ;


 int STAILQ_INIT (int *) ;
 TYPE_1__* malloc (int) ;

int
posix_spawn_file_actions_init(posix_spawn_file_actions_t *ret)
{
 posix_spawn_file_actions_t fa;

 fa = malloc(sizeof(struct __posix_spawn_file_actions));
 if (fa == ((void*)0))
  return (-1);

 STAILQ_INIT(&fa->fa_list);
 *ret = fa;
 return (0);
}
