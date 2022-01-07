
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {int wcroot_abspath; int pool; int skipped_trees; } ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,int ) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_skip_ancestor (int ,char const*) ;
 int svn_hash_sets (int ,int ,void*) ;

__attribute__((used)) static svn_error_t *
remember_skipped_tree(struct edit_baton *eb,
                      const char *local_abspath,
                      apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  svn_hash_sets(eb->skipped_trees,
                apr_pstrdup(eb->pool,
                            svn_dirent_skip_ancestor(eb->wcroot_abspath,
                                                     local_abspath)),
                (void *)1);

  return SVN_NO_ERROR;
}
