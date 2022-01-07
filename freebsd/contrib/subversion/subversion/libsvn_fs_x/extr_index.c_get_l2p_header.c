
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
struct TYPE_9__ {int is_packed; int start_revision; } ;
typedef TYPE_1__ svn_fs_x__rev_file_info_t ;
struct TYPE_10__ {int second; int revision; } ;
typedef TYPE_2__ svn_fs_x__pair_cache_key_t ;
struct TYPE_11__ {int l2p_header_cache; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
struct TYPE_12__ {TYPE_3__* fsap_data; } ;
typedef TYPE_4__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int l2p_header_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_l2p_header_body (int **,int *,TYPE_4__*,int ,int *,int *) ;
 int svn_cache__get (void**,scalar_t__*,int ,TYPE_2__*,int *) ;
 int svn_fs_x__rev_file_info (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
get_l2p_header(l2p_header_t **header,
               svn_fs_x__revision_file_t *rev_file,
               svn_fs_t *fs,
               svn_revnum_t revision,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_boolean_t is_cached = FALSE;
  svn_fs_x__rev_file_info_t file_info;


  svn_fs_x__pair_cache_key_t key;
  SVN_ERR(svn_fs_x__rev_file_info(&file_info, rev_file));
  key.revision = file_info.start_revision;
  key.second = file_info.is_packed;
  SVN_ERR(svn_cache__get((void**)header, &is_cached, ffd->l2p_header_cache,
                         &key, result_pool));
  if (is_cached)
    return SVN_NO_ERROR;


  SVN_ERR(get_l2p_header_body(header, rev_file, fs, revision, result_pool,
                              scratch_pool));

  return SVN_NO_ERROR;
}
