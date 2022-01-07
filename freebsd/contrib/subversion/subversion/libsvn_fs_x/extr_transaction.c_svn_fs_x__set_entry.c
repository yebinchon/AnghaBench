
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef void* svn_node_kind_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_20__ {int number; int change_set; } ;
struct TYPE_22__ {TYPE_1__ id; } ;
typedef TYPE_3__ svn_fs_x__representation_t ;
struct TYPE_23__ {TYPE_3__* data_rep; int noderev_id; } ;
typedef TYPE_4__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_24__ {char const* name; void* kind; int id; } ;
typedef TYPE_5__ svn_fs_x__dirent_t ;
struct TYPE_25__ {scalar_t__ txn_filesize; int * entries; } ;
typedef TYPE_6__ svn_fs_x__dir_data_t ;
struct TYPE_26__ {int dir_cache; } ;
typedef TYPE_7__ svn_fs_x__data_t ;
struct TYPE_27__ {TYPE_7__* fsap_data; } ;
typedef TYPE_8__ svn_fs_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_28__ {char const* name; TYPE_2__* new_entry; scalar_t__ txn_filesize; } ;
typedef TYPE_9__ replace_baton_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;
struct TYPE_21__ {char const* name; int id; void* kind; } ;


 int APR_APPEND ;
 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int SVN_FS_X__ITEM_INDEX_UNUSED ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 void* apr_pcalloc (int *,int) ;
 int svn_cache__get_partial (void**,scalar_t__*,int ,int const*,int ,int *,int *) ;
 int svn_cache__set (int ,int const*,TYPE_6__*,int *) ;
 int svn_cache__set_partial (int ,int const*,int ,TYPE_9__*,int *) ;
 int svn_fs_x__change_set_by_txn (int ) ;
 int svn_fs_x__extract_dir_filesize ;
 int svn_fs_x__id_reset (int *) ;
 int svn_fs_x__is_txn (int ) ;
 char* svn_fs_x__path_txn_node_children (TYPE_8__*,int *,int *,int *) ;
 int svn_fs_x__put_node_revision (TYPE_8__*,TYPE_4__*,int *) ;
 int svn_fs_x__rep_contents_dir (int **,TYPE_8__*,TYPE_4__*,int *,int *) ;
 int svn_fs_x__replace_dir_entry ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_flush (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_file_size_get (scalar_t__*,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int unparse_dir_entries (int *,int *,int *) ;
 int unparse_dir_entry (TYPE_5__*,int *,int *) ;

svn_error_t *
svn_fs_x__set_entry(svn_fs_t *fs,
                    svn_fs_x__txn_id_t txn_id,
                    svn_fs_x__noderev_t *parent_noderev,
                    const char *name,
                    const svn_fs_x__id_t *id,
                    svn_node_kind_t kind,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_t *rep = parent_noderev->data_rep;
  const char *filename
    = svn_fs_x__path_txn_node_children(fs, &parent_noderev->noderev_id,
                                       scratch_pool, scratch_pool);
  apr_file_t *file;
  svn_stream_t *out;
  svn_filesize_t filesize;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  apr_pool_t *subpool = svn_pool_create(scratch_pool);
  const svn_fs_x__id_t *key = &(parent_noderev->noderev_id);
  svn_fs_x__dirent_t entry;

  if (!rep || !svn_fs_x__is_txn(rep->id.change_set))
    {
      apr_array_header_t *entries;
      svn_fs_x__dir_data_t dir_data;



      SVN_ERR(svn_fs_x__rep_contents_dir(&entries, fs, parent_noderev,
                                         subpool, subpool));
      SVN_ERR(svn_io_file_open(&file, filename,
                               APR_WRITE | APR_CREATE | APR_BUFFERED,
                               APR_OS_DEFAULT, scratch_pool));
      out = svn_stream_from_aprfile2(file, TRUE, scratch_pool);
      SVN_ERR(unparse_dir_entries(entries, out, subpool));



      if (!rep)
        {
          rep = apr_pcalloc(result_pool, sizeof(*rep));
          parent_noderev->data_rep = rep;
        }


      rep->id.change_set = svn_fs_x__change_set_by_txn(txn_id);
      rep->id.number = SVN_FS_X__ITEM_INDEX_UNUSED;


      SVN_ERR(svn_fs_x__put_node_revision(fs, parent_noderev, subpool));





      SVN_ERR(svn_io_file_flush(file, subpool));


      SVN_ERR(svn_io_file_size_get(&filesize, file, subpool));


      dir_data.entries = entries;
      dir_data.txn_filesize = filesize;
      SVN_ERR(svn_cache__set(ffd->dir_cache, key, &dir_data, subpool));

      svn_pool_clear(subpool);
    }
  else
    {
      svn_boolean_t found;
      svn_filesize_t cached_filesize;


      SVN_ERR(svn_io_file_open(&file, filename, APR_WRITE | APR_APPEND,
                               APR_OS_DEFAULT, subpool));
      out = svn_stream_from_aprfile2(file, TRUE, subpool);
      SVN_ERR(svn_cache__get_partial((void **)&cached_filesize, &found,
                                     ffd->dir_cache, key,
                                     svn_fs_x__extract_dir_filesize,
                                     ((void*)0), subpool));



      if (found)
        {
          SVN_ERR(svn_io_file_size_get(&filesize, file, subpool));

          if (cached_filesize != filesize)
            SVN_ERR(svn_cache__set(ffd->dir_cache, key, ((void*)0), subpool));
        }
    }



  if (id)
    entry.id = *id;
  else
    svn_fs_x__id_reset(&entry.id);

  entry.name = name;
  entry.kind = kind;

  SVN_ERR(unparse_dir_entry(&entry, out, subpool));


  SVN_ERR(svn_io_file_flush(file, subpool));


  SVN_ERR(svn_io_file_size_get(&filesize, file, subpool));


  SVN_ERR(svn_io_file_close(file, subpool));
  svn_pool_clear(subpool);


    {

      replace_baton_t baton;

      baton.name = name;
      baton.new_entry = ((void*)0);
      baton.txn_filesize = filesize;

      if (id)
        {
          baton.new_entry = apr_pcalloc(subpool, sizeof(*baton.new_entry));
          baton.new_entry->name = name;
          baton.new_entry->kind = kind;
          baton.new_entry->id = *id;
        }


      SVN_ERR(svn_cache__set_partial(ffd->dir_cache, key,
                                     svn_fs_x__replace_dir_entry, &baton,
                                     subpool));
    }

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
