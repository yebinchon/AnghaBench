
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {TYPE_5__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_18__ {int p2l_stream; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
struct TYPE_19__ {int page; int is_packed; scalar_t__ revision; int member_0; } ;
typedef TYPE_3__ svn_fs_fs__page_cache_key_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_20__ {int page_size; int page_start; int next_offset; int start_offset; scalar_t__ first_revision; int page_no; scalar_t__ revision; } ;
typedef TYPE_4__ p2l_page_info_baton_t ;
struct TYPE_21__ {int p2l_page_cache; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_array_header_t ;


 scalar_t__ APR_UINT32_MAX ;
 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int get_p2l_page (int **,TYPE_2__*,TYPE_1__*,scalar_t__,int ,int ,int ,int ,int *) ;
 int get_p2l_page_info (TYPE_4__*,TYPE_2__*,TYPE_1__*,int *) ;
 int svn_cache__has_key (scalar_t__*,int ,TYPE_3__*,int *) ;
 int svn_cache__set (int ,TYPE_3__*,int *,int *) ;
 int svn_fs_fs__is_packed_rev (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
prefetch_p2l_page(svn_boolean_t *end,
                  int *leaking_bucket,
                  svn_fs_t *fs,
                  svn_fs_fs__revision_file_t *rev_file,
                  p2l_page_info_baton_t *baton,
                  apr_off_t min_offset,
                  apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_boolean_t already_cached;
  apr_array_header_t *page;
  svn_fs_fs__page_cache_key_t key = { 0 };


  *end = FALSE;
  baton->revision = baton->first_revision;
  SVN_ERR(get_p2l_page_info(baton, rev_file, fs, scratch_pool));
  if (baton->start_offset < min_offset || !rev_file->p2l_stream)
    {

      *end = TRUE;
      return SVN_NO_ERROR;
    }


  assert(baton->first_revision <= APR_UINT32_MAX);
  key.revision = (apr_uint32_t)baton->first_revision;
  key.is_packed = svn_fs_fs__is_packed_rev(fs, baton->first_revision);
  key.page = baton->page_no;
  SVN_ERR(svn_cache__has_key(&already_cached, ffd->p2l_page_cache,
                             &key, scratch_pool));


  if (already_cached)
    {

      if (!--*leaking_bucket)
        *end = TRUE;

      return SVN_NO_ERROR;
    }

  ++*leaking_bucket;


  SVN_ERR(get_p2l_page(&page, rev_file, fs,
                       baton->first_revision,
                       baton->start_offset,
                       baton->next_offset,
                       baton->page_start,
                       baton->page_size,
                       scratch_pool));


  SVN_ERR(svn_cache__set(ffd->p2l_page_cache, &key, page, scratch_pool));

  return SVN_NO_ERROR;
}
