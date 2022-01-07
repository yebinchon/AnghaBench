
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int * (* get_locks ) (TYPE_2__*,int **,char const*,scalar_t__,int *) ;} ;


 int SVN_ERR_ASSERT (int) ;
 int * stub1 (TYPE_2__*,int **,char const*,scalar_t__,int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_infinity ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *svn_ra_get_locks2(svn_ra_session_t *session,
                               apr_hash_t **locks,
                               const char *path,
                               svn_depth_t depth,
                               apr_pool_t *pool)
{
  SVN_ERR_ASSERT(svn_relpath_is_canonical(path));
  SVN_ERR_ASSERT((depth == svn_depth_empty) ||
                 (depth == svn_depth_files) ||
                 (depth == svn_depth_immediates) ||
                 (depth == svn_depth_infinity));
  return session->vtable->get_locks(session, locks, path, depth, pool);
}
