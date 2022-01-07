
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* token; } ;
typedef TYPE_1__ svn_fs_lock_target_t ;



void
svn_fs_lock_target_set_token(svn_fs_lock_target_t *target,
                             const char *token)
{
  target->token = token;
}
