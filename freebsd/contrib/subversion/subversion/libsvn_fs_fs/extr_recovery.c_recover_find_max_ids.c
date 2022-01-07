
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_19__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
struct TYPE_20__ {int file; int stream; } ;
typedef TYPE_3__ svn_fs_fs__revision_file_t ;
struct TYPE_21__ {scalar_t__ type; } ;
typedef TYPE_4__ svn_fs_fs__rep_header_t ;
struct TYPE_22__ {scalar_t__ revision; int number; } ;
typedef TYPE_5__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct recover_read_from_file_baton {int remaining; int * pool; int stream; } ;
struct TYPE_23__ {scalar_t__ kind; int id; TYPE_1__* data_rep; } ;
typedef TYPE_6__ node_revision_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_18__ {scalar_t__ revision; int expanded_size; int item_index; } ;
struct TYPE_17__ {scalar_t__ number; } ;
struct TYPE_16__ {scalar_t__ number; } ;


 int APR_SET ;
 int SVN_ERR (int *) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_FS__KIND_DIR ;
 int SVN_FS_FS__KIND_FILE ;
 int SVN_HASH_TERMINATOR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 char* apr_pstrdup (int *,int ) ;
 int read_handler_recover ;
 scalar_t__ strcmp (char*,int ) ;
 char* svn_cstring_tokenize (char*,char**) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_quick_wrapf (int *,int ,int ) ;
 TYPE_13__* svn_fs_fs__id_copy_id (int const*) ;
 TYPE_12__* svn_fs_fs__id_node_id (int const*) ;
 int * svn_fs_fs__id_parse (int const**,char*,int *) ;
 TYPE_5__* svn_fs_fs__id_rev_item (int const*) ;
 TYPE_2__* svn_fs_fs__id_unparse (int ,int *) ;
 int * svn_fs_fs__item_offset (int *,int *,TYPE_3__*,scalar_t__,int *,int ,int *) ;
 int * svn_fs_fs__read_noderev (TYPE_6__**,int ,int *,int *) ;
 int * svn_fs_fs__read_rep_header (TYPE_4__**,int ,int *,int *) ;
 scalar_t__ svn_fs_fs__rep_plain ;
 int * svn_hash_read2 (int *,int *,int ,int *) ;
 int * svn_io_file_seek (int ,int ,int *,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_stream_close (int *) ;
 int * svn_stream_create (struct recover_read_from_file_baton*,int *) ;
 int svn_stream_set_read2 (int *,int *,int ) ;

__attribute__((used)) static svn_error_t *
recover_find_max_ids(svn_fs_t *fs,
                     svn_revnum_t rev,
                     svn_fs_fs__revision_file_t *rev_file,
                     apr_off_t offset,
                     apr_uint64_t *max_node_id,
                     apr_uint64_t *max_copy_id,
                     apr_pool_t *pool)
{
  svn_fs_fs__rep_header_t *header;
  struct recover_read_from_file_baton baton;
  svn_stream_t *stream;
  apr_hash_t *entries;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;
  node_revision_t *noderev;
  svn_error_t *err;

  baton.stream = rev_file->stream;
  SVN_ERR(svn_io_file_seek(rev_file->file, APR_SET, &offset, pool));
  SVN_ERR(svn_fs_fs__read_noderev(&noderev, baton.stream, pool, pool));


  if (noderev->kind != svn_node_dir)
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Recovery encountered a non-directory node"));


  if (!noderev->data_rep)
    return SVN_NO_ERROR;





  if (noderev->data_rep->revision != rev)
    return SVN_NO_ERROR;



  SVN_ERR(svn_fs_fs__item_offset(&offset, fs, rev_file, rev, ((void*)0),
                                 noderev->data_rep->item_index, pool));
  SVN_ERR(svn_io_file_seek(rev_file->file, APR_SET, &offset, pool));
  SVN_ERR(svn_fs_fs__read_rep_header(&header, baton.stream, pool, pool));
  if (header->type != svn_fs_fs__rep_plain)
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Recovery encountered a deltified directory "
                              "representation"));




  baton.pool = pool;
  baton.remaining = noderev->data_rep->expanded_size;
  stream = svn_stream_create(&baton, pool);
  svn_stream_set_read2(stream, ((void*)0) ,
                       read_handler_recover);


  entries = apr_hash_make(pool);
  err = svn_hash_read2(entries, stream, SVN_HASH_TERMINATOR, pool);
  if (err)
    {
      svn_string_t *id_str = svn_fs_fs__id_unparse(noderev->id, pool);

      err = svn_error_compose_create(err, svn_stream_close(stream));
      return svn_error_quick_wrapf(err,
                _("malformed representation for node-revision '%s'"),
                id_str->data);
    }
  SVN_ERR(svn_stream_close(stream));



  iterpool = svn_pool_create(pool);
  for (hi = apr_hash_first(pool, entries); hi; hi = apr_hash_next(hi))
    {
      char *str_val;
      char *str;
      svn_node_kind_t kind;
      const svn_fs_id_t *id;
      const svn_fs_fs__id_part_t *rev_item;
      apr_uint64_t node_id, copy_id;
      apr_off_t child_dir_offset;
      const svn_string_t *path = apr_hash_this_val(hi);

      svn_pool_clear(iterpool);

      str_val = apr_pstrdup(iterpool, path->data);

      str = svn_cstring_tokenize(" ", &str_val);
      if (str == ((void*)0))
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Directory entry corrupt"));

      if (strcmp(str, SVN_FS_FS__KIND_FILE) == 0)
        kind = svn_node_file;
      else if (strcmp(str, SVN_FS_FS__KIND_DIR) == 0)
        kind = svn_node_dir;
      else
        {
          return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                  _("Directory entry corrupt"));
        }

      str = svn_cstring_tokenize(" ", &str_val);
      if (str == ((void*)0))
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Directory entry corrupt"));

      SVN_ERR(svn_fs_fs__id_parse(&id, str, iterpool));

      rev_item = svn_fs_fs__id_rev_item(id);
      if (rev_item->revision != rev)
        {


          continue;
        }

      node_id = svn_fs_fs__id_node_id(id)->number;
      copy_id = svn_fs_fs__id_copy_id(id)->number;

      if (node_id > *max_node_id)
        *max_node_id = node_id;
      if (copy_id > *max_copy_id)
        *max_copy_id = copy_id;

      if (kind == svn_node_file)
        continue;

      SVN_ERR(svn_fs_fs__item_offset(&child_dir_offset, fs,
                                     rev_file, rev, ((void*)0), rev_item->number,
                                     iterpool));
      SVN_ERR(recover_find_max_ids(fs, rev, rev_file, child_dir_offset,
                                   max_node_id, max_copy_id, iterpool));
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
