
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_fs_t ;
struct TYPE_6__ {int entries; int txn_filesize; } ;
typedef TYPE_1__ svn_fs_fs__dir_data_t ;
typedef int svn_fs_dirent_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int id; TYPE_3__* data_rep; } ;
typedef TYPE_2__ node_revision_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
struct TYPE_8__ {int expanded_size; int txn_id; } ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_array_make (int *,int ,int) ;
 int read_dir_entries (int *,int *,int ,int ,int *,int *) ;
 int svn_fs_fs__get_contents (int **,int *,TYPE_3__*,int ,int *) ;
 scalar_t__ svn_fs_fs__id_txn_used (int *) ;
 char* svn_fs_fs__path_txn_node_children (int *,int ,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_file_size_get (int *,int *,int *) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int * svn_stream_from_stringbuf (int *,int *) ;
 int svn_stringbuf_from_stream (int **,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_dir_contents(svn_fs_fs__dir_data_t *dir,
                 svn_fs_t *fs,
                 node_revision_t *noderev,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_stream_t *contents;


  dir->txn_filesize = SVN_INVALID_FILESIZE;


  if (noderev->data_rep && svn_fs_fs__id_txn_used(&noderev->data_rep->txn_id))
    {

      const char *filename;
      apr_file_t *file;

      filename = svn_fs_fs__path_txn_node_children(fs, noderev->id,
                                                   scratch_pool);




      SVN_ERR(svn_io_file_open(&file, filename, APR_READ | APR_BUFFERED,
                               APR_OS_DEFAULT, scratch_pool));


      SVN_ERR(svn_io_file_size_get(&dir->txn_filesize, file, scratch_pool));

      contents = svn_stream_from_aprfile2(file, FALSE, scratch_pool);
      SVN_ERR(read_dir_entries(&dir->entries, contents, TRUE, noderev->id,
                               result_pool, scratch_pool));
      SVN_ERR(svn_stream_close(contents));
    }
  else if (noderev->data_rep)
    {



      apr_size_t len = noderev->data_rep->expanded_size;
      svn_stringbuf_t *text;


      SVN_ERR(svn_fs_fs__get_contents(&contents, fs, noderev->data_rep,
                                      FALSE, scratch_pool));
      SVN_ERR(svn_stringbuf_from_stream(&text, contents, len, scratch_pool));
      SVN_ERR(svn_stream_close(contents));


      contents = svn_stream_from_stringbuf(text, scratch_pool);
      SVN_ERR(read_dir_entries(&dir->entries, contents, FALSE, noderev->id,
                               result_pool, scratch_pool));
    }
  else
    {
       dir->entries = apr_array_make(result_pool, 0, sizeof(svn_fs_dirent_t *));
    }

  return SVN_NO_ERROR;
}
