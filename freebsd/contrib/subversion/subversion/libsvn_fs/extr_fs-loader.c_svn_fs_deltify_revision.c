
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* deltify ) (TYPE_2__*,int ,int *) ;} ;


 int stub1 (TYPE_2__*,int ,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_deltify_revision(svn_fs_t *fs, svn_revnum_t revision, apr_pool_t *pool)
{
  return svn_error_trace(fs->vtable->deltify(fs, revision, pool));
}
