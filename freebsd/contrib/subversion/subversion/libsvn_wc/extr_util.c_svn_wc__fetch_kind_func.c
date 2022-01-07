
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct svn_wc__shim_fetch_baton_t {int db; int base_abspath; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_wc__db_read_kind (int *,int ,char const*,int ,int ,int ,int *) ;

svn_error_t *
svn_wc__fetch_kind_func(svn_node_kind_t *kind,
                        void *baton,
                        const char *path,
                        svn_revnum_t base_revision,
                        apr_pool_t *scratch_pool)
{
  struct svn_wc__shim_fetch_baton_t *sfb = baton;
  const char *local_abspath = svn_dirent_join(sfb->base_abspath, path,
                                              scratch_pool);

  SVN_ERR(svn_wc__db_read_kind(kind, sfb->db, local_abspath,
                               FALSE ,
                               TRUE ,
                               FALSE ,
                               scratch_pool));

  return SVN_NO_ERROR;
}
