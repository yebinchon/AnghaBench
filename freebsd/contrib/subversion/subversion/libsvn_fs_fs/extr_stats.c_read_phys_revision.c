
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ len; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_15__ {scalar_t__ offset; scalar_t__ end; scalar_t__ changes_len; int revision; TYPE_1__* rev_file; } ;
typedef TYPE_3__ revision_info_t ;
typedef int query_t ;
typedef int buf ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_13__ {int file; } ;


 int APR_SET ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_phys_change_count (int *,TYPE_3__*,int *) ;
 int read_noderev (int *,TYPE_2__*,TYPE_3__*,int *,int *) ;
 int read_phsy_noderev (TYPE_2__**,int *,scalar_t__,TYPE_3__*,int *,int *) ;
 int svn_fs_fs__parse_revision_trailer (scalar_t__*,scalar_t__*,TYPE_2__*,int ) ;
 TYPE_2__* svn_fs_fs__unparse_revision_trailer (scalar_t__,scalar_t__,int *) ;
 int svn_io_file_read_full2 (int ,char*,int ,int *,int *,int *) ;
 int svn_io_file_seek (int ,int ,scalar_t__*,int *) ;
 TYPE_2__* svn_stringbuf_ncreate (char*,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_phys_revision(query_t *query,
                   revision_info_t *info,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  char buf[64];
  apr_off_t root_node_offset;
  apr_off_t changes_offset;
  svn_stringbuf_t *trailer;
  svn_stringbuf_t *noderev_str;


  apr_off_t start = MAX(info->offset, info->end - sizeof(buf));
  apr_size_t len = (apr_size_t)(info->end - start);
  SVN_ERR(svn_io_file_seek(info->rev_file->file, APR_SET, &start,
                           scratch_pool));
  SVN_ERR(svn_io_file_read_full2(info->rev_file->file, buf, len, ((void*)0), ((void*)0),
                                 scratch_pool));
  trailer = svn_stringbuf_ncreate(buf, len, scratch_pool);


  SVN_ERR(svn_fs_fs__parse_revision_trailer(&root_node_offset,
                                            &changes_offset, trailer,
                                            info->revision));
  SVN_ERR(get_phys_change_count(query, info, scratch_pool));


  trailer = svn_fs_fs__unparse_revision_trailer(root_node_offset,
                                                changes_offset,
                                                scratch_pool);
  info->changes_len = info->end - info->offset - changes_offset
                    - trailer->len;


  SVN_ERR(read_phsy_noderev(&noderev_str, query, root_node_offset, info,
                            scratch_pool, scratch_pool));
  SVN_ERR(read_noderev(query, noderev_str, info, result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
