
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {TYPE_6__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_18__ {int is_packed; int start_revision; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_19__ {int second; int revision; } ;
typedef TYPE_3__ pair_cache_key_t ;
struct TYPE_20__ {int revision; } ;
typedef TYPE_4__ p2l_page_info_baton_t ;
struct TYPE_21__ {int offsets; } ;
typedef TYPE_5__ p2l_header_t ;
struct TYPE_22__ {int p2l_header_cache; } ;
typedef TYPE_6__ fs_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_p2l_header (TYPE_5__**,TYPE_2__*,TYPE_1__*,int ,int *,int *) ;
 int p2l_page_info_copy (TYPE_4__*,TYPE_5__*,int ) ;
 int p2l_page_info_func ;
 int svn_cache__get_partial (void**,scalar_t__*,int ,TYPE_3__*,int ,TYPE_4__*,int *) ;

__attribute__((used)) static svn_error_t *
get_p2l_page_info(p2l_page_info_baton_t *baton,
                  svn_fs_fs__revision_file_t *rev_file,
                  svn_fs_t *fs,
                  apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  p2l_header_t *header;
  svn_boolean_t is_cached = FALSE;
  void *dummy = ((void*)0);


  pair_cache_key_t key;
  key.revision = rev_file->start_revision;
  key.second = rev_file->is_packed;

  SVN_ERR(svn_cache__get_partial(&dummy, &is_cached, ffd->p2l_header_cache,
                                 &key, p2l_page_info_func, baton,
                                 scratch_pool));
  if (is_cached)
    return SVN_NO_ERROR;

  SVN_ERR(get_p2l_header(&header, rev_file, fs, baton->revision,
                         scratch_pool, scratch_pool));


  p2l_page_info_copy(baton, header, header->offsets);

  return SVN_NO_ERROR;
}
