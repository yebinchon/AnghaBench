
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_1__ svn_fs_x__page_cache_key_t ;
typedef int svn_fs_x__p2l_entry_t ;
struct TYPE_10__ {int p2l_page_cache; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
struct TYPE_11__ {TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int p2l_page_info_baton_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 scalar_t__ compare_p2l_entry_offsets ;
 int get_p2l_keys (int *,TYPE_1__*,int *,TYPE_3__*,int ,scalar_t__,int *) ;
 int p2l_entry_lookup_func ;
 int p2l_index_lookup (int *,int *,TYPE_3__*,int ,scalar_t__,scalar_t__,int *) ;
 int svn_cache__get_partial (void**,int *,int ,TYPE_1__*,int ,scalar_t__*,int *) ;
 int * svn_sort__array_lookup (int *,scalar_t__*,int *,int (*) (void const*,void const*)) ;

__attribute__((used)) static svn_error_t *
p2l_entry_lookup(svn_fs_x__p2l_entry_t **entry_p,
                 svn_fs_x__revision_file_t *rev_file,
                 svn_fs_t *fs,
                 svn_revnum_t revision,
                 apr_off_t offset,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_fs_x__page_cache_key_t key = { 0 };
  svn_boolean_t is_cached = FALSE;
  p2l_page_info_baton_t page_info;


  SVN_ERR(get_p2l_keys(&page_info, &key, rev_file, fs, revision, offset,
                       scratch_pool));
  SVN_ERR(svn_cache__get_partial((void**)entry_p, &is_cached,
                                 ffd->p2l_page_cache, &key,
                                 p2l_entry_lookup_func, &offset,
                                 result_pool));
  if (!is_cached)
    {


      apr_array_header_t *entries = apr_array_make(result_pool, 1,
                                                   sizeof(**entry_p));
      SVN_ERR(p2l_index_lookup(entries, rev_file, fs, revision, offset,
                               offset + 1, scratch_pool));


      *entry_p = svn_sort__array_lookup(entries, &offset, ((void*)0),
          (int (*)(const void *, const void *))compare_p2l_entry_offsets);
    }

  return SVN_NO_ERROR;
}
