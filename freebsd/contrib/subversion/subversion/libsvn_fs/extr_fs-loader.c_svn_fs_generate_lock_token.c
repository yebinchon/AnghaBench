
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* generate_lock_token ) (char const**,TYPE_2__*,int *) ;} ;


 int stub1 (char const**,TYPE_2__*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_generate_lock_token(const char **token, svn_fs_t *fs, apr_pool_t *pool)
{
  return svn_error_trace(fs->vtable->generate_lock_token(token, fs, pool));
}
