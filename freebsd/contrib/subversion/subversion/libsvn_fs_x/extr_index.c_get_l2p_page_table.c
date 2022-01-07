
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_10__ {int second; int revision; } ;
typedef TYPE_1__ svn_fs_x__pair_cache_key_t ;
struct TYPE_11__ {int l2p_header_cache; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
struct TYPE_12__ {TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_13__ {int * pages; int revision; } ;
typedef TYPE_4__ l2p_page_table_baton_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_array_clear (int *) ;
 int base_revision (TYPE_3__*,int ) ;
 int l2p_page_table_access_func ;
 int svn_cache__get_partial (void**,int *,int ,TYPE_1__*,int ,TYPE_4__*,int *) ;
 int svn_fs_x__is_packed_rev (TYPE_3__*,int ) ;

__attribute__((used)) static svn_error_t *
get_l2p_page_table(apr_array_header_t *pages,
                   svn_fs_t *fs,
                   svn_revnum_t revision,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_boolean_t is_cached = FALSE;
  l2p_page_table_baton_t baton;

  svn_fs_x__pair_cache_key_t key;
  key.revision = base_revision(fs, revision);
  key.second = svn_fs_x__is_packed_rev(fs, revision);

  apr_array_clear(pages);
  baton.revision = revision;
  baton.pages = pages;
  SVN_ERR(svn_cache__get_partial((void**)&pages, &is_cached,
                                 ffd->l2p_header_cache, &key,
                                 l2p_page_table_access_func, &baton,
                                 scratch_pool));

  return SVN_NO_ERROR;
}
