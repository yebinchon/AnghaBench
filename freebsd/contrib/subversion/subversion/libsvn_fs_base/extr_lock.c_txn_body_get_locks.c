
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct locks_get_args {int stream; int depth; int path; } ;


 int spool_locks_info ;
 int * svn_fs_bdb__locks_get (int ,int ,int ,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_get_locks(void *baton, trail_t *trail)
{
  struct locks_get_args *args = baton;
  return svn_fs_bdb__locks_get(trail->fs, args->path, args->depth,
                               spool_locks_info, args->stream,
                               trail, trail->pool);
}
