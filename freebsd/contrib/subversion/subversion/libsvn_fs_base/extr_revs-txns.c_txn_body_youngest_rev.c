
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;


 int * svn_fs_bdb__youngest_rev (void*,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_youngest_rev(void *baton, trail_t *trail)
{
  return svn_fs_bdb__youngest_rev(baton, trail->fs, trail, trail->pool);
}
