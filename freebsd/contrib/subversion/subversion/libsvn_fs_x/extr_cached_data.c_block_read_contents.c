
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_fs_x__revision_file_t ;
struct TYPE_8__ {int item_index; scalar_t__ revision; int is_packed; int member_0; } ;
typedef TYPE_1__ svn_fs_x__representation_cache_key_t ;
typedef int svn_fs_x__rep_header_t ;
struct TYPE_9__ {int second; scalar_t__ revision; } ;
typedef TYPE_2__ svn_fs_x__pair_cache_key_t ;
typedef int svn_fs_x__p2l_entry_t ;
typedef int svn_fs_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int member_0; } ;
typedef TYPE_3__ rep_state_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef scalar_t__ apr_int32_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int cache_windows (int *,int *,TYPE_3__*,int ,int *) ;
 int init_rep_state (TYPE_3__*,int *,int *,int *,int *,int *) ;
 int read_rep_header (int **,int *,int *,TYPE_1__*,int *) ;
 int svn_fs_x__is_packed_rev (int *,scalar_t__) ;

__attribute__((used)) static svn_error_t *
block_read_contents(svn_fs_t *fs,
                    svn_fs_x__revision_file_t *rev_file,
                    svn_fs_x__p2l_entry_t* entry,
                    svn_fs_x__pair_cache_key_t *key,
                    apr_off_t max_offset,
                    apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_cache_key_t header_key = { 0 };
  rep_state_t rs = { 0 };
  svn_filesize_t fulltext_len;
  svn_fs_x__rep_header_t *rep_header;

  header_key.revision = (apr_int32_t)key->revision;
  header_key.is_packed = svn_fs_x__is_packed_rev(fs, header_key.revision);
  header_key.item_index = key->second;

  SVN_ERR(read_rep_header(&rep_header, fs, rev_file, &header_key,
                          scratch_pool));
  SVN_ERR(init_rep_state(&rs, rep_header, fs, rev_file, entry, scratch_pool));
  SVN_ERR(cache_windows(&fulltext_len, fs, &rs, max_offset, scratch_pool));

  return SVN_NO_ERROR;
}
