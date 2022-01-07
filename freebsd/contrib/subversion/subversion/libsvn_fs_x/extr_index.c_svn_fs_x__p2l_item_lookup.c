
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
struct TYPE_13__ {int member_0; } ;
typedef TYPE_1__ svn_fs_x__page_cache_key_t ;
struct TYPE_14__ {scalar_t__ item_count; scalar_t__ items; } ;
typedef TYPE_2__ svn_fs_x__p2l_entry_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_15__ {int p2l_page_cache; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
struct TYPE_16__ {TYPE_3__* fsap_data; } ;
typedef TYPE_4__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int p2l_page_info_baton_t ;
struct TYPE_17__ {scalar_t__ sub_item; int offset; } ;
typedef TYPE_5__ p2l_item_lookup_baton_t ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_pmemdup (int *,scalar_t__,int) ;
 int get_p2l_keys (int *,TYPE_1__*,int *,TYPE_4__*,int ,int ,int *) ;
 int p2l_entry_lookup (TYPE_2__**,int *,TYPE_4__*,int ,int ,int *,int *) ;
 int p2l_item_lookup_func ;
 int svn_cache__get_partial (void**,int *,int ,TYPE_1__*,int ,TYPE_5__*,int *) ;

svn_error_t *
svn_fs_x__p2l_item_lookup(svn_fs_x__id_t **item,
                          svn_fs_t *fs,
                          svn_fs_x__revision_file_t *rev_file,
                          svn_revnum_t revision,
                          apr_off_t offset,
                          apr_uint32_t sub_item,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_fs_x__page_cache_key_t key = { 0 };
  svn_boolean_t is_cached = FALSE;
  p2l_page_info_baton_t page_info;
  p2l_item_lookup_baton_t baton;

  *item = ((void*)0);


  SVN_ERR(get_p2l_keys(&page_info, &key, rev_file, fs, revision, offset,
                       scratch_pool));
  baton.offset = offset;
  baton.sub_item = sub_item;
  SVN_ERR(svn_cache__get_partial((void**)item, &is_cached,
                                 ffd->p2l_page_cache, &key,
                                 p2l_item_lookup_func, &baton, result_pool));
  if (!is_cached)
    {


      svn_fs_x__p2l_entry_t *entry;
      SVN_ERR(p2l_entry_lookup(&entry, rev_file, fs, revision, offset,
                               result_pool, scratch_pool));


      if (entry && entry->item_count > sub_item)
        *item = apr_pmemdup(result_pool, entry->items + sub_item,
                            sizeof(**item));
    }

  return SVN_NO_ERROR;
}
