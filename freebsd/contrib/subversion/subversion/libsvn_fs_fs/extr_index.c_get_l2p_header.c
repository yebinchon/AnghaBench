
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_10__ {TYPE_4__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_11__ {int is_packed; int start_revision; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_12__ {int second; int revision; } ;
typedef TYPE_3__ pair_cache_key_t ;
typedef int l2p_header_t ;
struct TYPE_13__ {int l2p_header_cache; } ;
typedef TYPE_4__ fs_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_l2p_header_body (int **,TYPE_2__*,TYPE_1__*,int ,int *,int *) ;
 int svn_cache__get (void**,scalar_t__*,int ,TYPE_3__*,int *) ;

__attribute__((used)) static svn_error_t *
get_l2p_header(l2p_header_t **header,
               svn_fs_fs__revision_file_t *rev_file,
               svn_fs_t *fs,
               svn_revnum_t revision,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_boolean_t is_cached = FALSE;


  pair_cache_key_t key;
  key.revision = rev_file->start_revision;
  key.second = rev_file->is_packed;
  SVN_ERR(svn_cache__get((void**)header, &is_cached, ffd->l2p_header_cache,
                         &key, result_pool));
  if (is_cached)
    return SVN_NO_ERROR;


  SVN_ERR(get_l2p_header_body(header, rev_file, fs, revision, result_pool,
                              scratch_pool));

  return SVN_NO_ERROR;
}
