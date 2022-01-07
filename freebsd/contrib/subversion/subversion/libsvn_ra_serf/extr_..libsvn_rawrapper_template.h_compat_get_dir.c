
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {int * (* get_dir ) (void*,int **,int *,int **,char const*,int ,int ,int *) ;} ;


 int SVN_DIRENT_ALL ;
 TYPE_1__ VTBL ;
 int * stub1 (void*,int **,int *,int **,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *compat_get_dir(void *session_baton,
                                   const char *path,
                                   svn_revnum_t revision,
                                   apr_hash_t **dirents,
                                   svn_revnum_t *fetched_rev,
                                   apr_hash_t **props,
                                   apr_pool_t *pool)
{
  return VTBL.get_dir(session_baton, dirents, fetched_rev, props,
                      path, revision, SVN_DIRENT_ALL, pool);
}
