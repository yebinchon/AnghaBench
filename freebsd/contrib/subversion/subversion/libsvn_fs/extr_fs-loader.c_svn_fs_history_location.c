
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_history_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* location ) (char const**,int *,TYPE_2__*,int *) ;} ;


 int stub1 (char const**,int *,TYPE_2__*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_history_location(const char **path, svn_revnum_t *revision,
                        svn_fs_history_t *history, apr_pool_t *pool)
{
  return svn_error_trace(history->vtable->location(path, revision, history,
                                                   pool));
}
