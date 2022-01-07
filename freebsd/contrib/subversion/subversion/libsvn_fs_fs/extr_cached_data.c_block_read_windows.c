
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int member_0; } ;
typedef TYPE_1__ window_cache_key_t ;
struct TYPE_24__ {size_t len; scalar_t__* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
struct TYPE_25__ {TYPE_7__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
struct TYPE_26__ {int file; } ;
typedef TYPE_4__ svn_fs_fs__revision_file_t ;
struct TYPE_27__ {scalar_t__ type; } ;
typedef TYPE_5__ svn_fs_fs__rep_header_t ;
typedef int svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_28__ {int size; scalar_t__ current; int combined_cache; scalar_t__ start; int member_0; } ;
typedef TYPE_6__ rep_state_t ;
struct TYPE_29__ {int combined_window_cache; int raw_window_cache; int txdelta_window_cache; } ;
typedef TYPE_7__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int aligned_seek (TYPE_3__*,int ,int *,scalar_t__,int *) ;
 int cache_windows (TYPE_3__*,TYPE_6__*,scalar_t__,int *) ;
 int get_window_key (TYPE_1__*,TYPE_6__*) ;
 int init_rep_state (TYPE_6__*,TYPE_5__*,TYPE_3__*,TYPE_4__*,int *,int *) ;
 int set_cached_combined_window (TYPE_2__*,TYPE_6__*,int *) ;
 int svn_cache__has_key (scalar_t__*,int ,int ,int *) ;
 scalar_t__ svn_fs_fs__rep_plain ;
 int svn_io_file_read_full2 (int ,scalar_t__*,int ,size_t*,int *,int *) ;
 TYPE_2__* svn_stringbuf_create_ensure (int ,int *) ;

__attribute__((used)) static svn_error_t *
block_read_windows(svn_fs_fs__rep_header_t *rep_header,
                   svn_fs_t *fs,
                   svn_fs_fs__revision_file_t *rev_file,
                   svn_fs_fs__p2l_entry_t* entry,
                   apr_off_t max_offset,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  rep_state_t rs = { 0 };
  apr_off_t offset;
  window_cache_key_t key = { 0 };

  if ( (rep_header->type != svn_fs_fs__rep_plain
          && (!ffd->txdelta_window_cache || !ffd->raw_window_cache))
      || (rep_header->type == svn_fs_fs__rep_plain
          && !ffd->combined_window_cache))
    return SVN_NO_ERROR;

  SVN_ERR(init_rep_state(&rs, rep_header, fs, rev_file, entry,
                         result_pool));



  offset = rs.start + rs.current;
  if (rep_header->type == svn_fs_fs__rep_plain)
    {
      svn_stringbuf_t *plaintext;
      svn_boolean_t is_cached;


      SVN_ERR(svn_cache__has_key(&is_cached, rs.combined_cache,
                                 get_window_key(&key, &rs),
                                 scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;




      SVN_ERR(aligned_seek(fs, rev_file->file, ((void*)0), offset, scratch_pool));

      plaintext = svn_stringbuf_create_ensure(rs.size, result_pool);
      SVN_ERR(svn_io_file_read_full2(rev_file->file, plaintext->data,
                                     rs.size, &plaintext->len, ((void*)0),
                                     result_pool));
      plaintext->data[plaintext->len] = 0;
      rs.current += rs.size;

      SVN_ERR(set_cached_combined_window(plaintext, &rs, scratch_pool));
    }
  else
    {
      SVN_ERR(cache_windows(fs, &rs, max_offset, scratch_pool));
    }

  return SVN_NO_ERROR;
}
