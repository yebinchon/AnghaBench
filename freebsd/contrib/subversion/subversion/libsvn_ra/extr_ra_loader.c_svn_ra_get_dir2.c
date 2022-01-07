
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int * (* get_dir ) (TYPE_2__*,int **,int *,int **,char const*,int ,int ,int *) ;} ;


 int SVN_ERR_ASSERT (int ) ;
 int * stub1 (TYPE_2__*,int **,int *,int **,char const*,int ,int ,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *svn_ra_get_dir2(svn_ra_session_t *session,
                             apr_hash_t **dirents,
                             svn_revnum_t *fetched_rev,
                             apr_hash_t **props,
                             const char *path,
                             svn_revnum_t revision,
                             apr_uint32_t dirent_fields,
                             apr_pool_t *pool)
{
  SVN_ERR_ASSERT(svn_relpath_is_canonical(path));
  return session->vtable->get_dir(session, dirents, fetched_rev, props,
                                  path, revision, dirent_fields, pool);
}
