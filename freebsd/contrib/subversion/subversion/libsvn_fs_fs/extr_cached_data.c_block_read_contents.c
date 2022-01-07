
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_11__ {int stream; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
typedef int svn_fs_fs__rep_header_t ;
struct TYPE_10__ {int number; scalar_t__ revision; } ;
struct TYPE_12__ {TYPE_1__ item; } ;
typedef TYPE_3__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
struct TYPE_13__ {int second; scalar_t__ revision; int member_0; } ;
typedef TYPE_4__ pair_cache_key_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef scalar_t__ apr_int32_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int block_read_windows (int *,int *,TYPE_2__*,TYPE_3__*,int ,int *,int *) ;
 int read_rep_header (int **,int *,int ,TYPE_4__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
block_read_contents(svn_fs_t *fs,
                    svn_fs_fs__revision_file_t *rev_file,
                    svn_fs_fs__p2l_entry_t* entry,
                    apr_off_t max_offset,
                    apr_pool_t *scratch_pool)
{
  pair_cache_key_t header_key = { 0 };
  svn_fs_fs__rep_header_t *rep_header;

  header_key.revision = (apr_int32_t)entry->item.revision;
  header_key.second = entry->item.number;

  SVN_ERR(read_rep_header(&rep_header, fs, rev_file->stream, &header_key,
                          scratch_pool, scratch_pool));
  SVN_ERR(block_read_windows(rep_header, fs, rev_file, entry, max_offset,
                             scratch_pool, scratch_pool));

  return SVN_NO_ERROR;
}
