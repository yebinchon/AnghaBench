
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_8__ {TYPE_4__* data_rep; int noderev_id; } ;
typedef TYPE_2__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_x__dirent_t ;
struct TYPE_9__ {int entries; scalar_t__ txn_filesize; } ;
typedef TYPE_3__ svn_fs_x__dir_data_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
struct TYPE_7__ {int change_set; } ;
struct TYPE_10__ {scalar_t__ expanded_size; TYPE_1__ id; } ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_array_make (int *,int ,int) ;
 int parse_dir_entries (int *,int *,int ,int const*,int *,int *) ;
 int svn_fs_x__get_contents (int **,int *,TYPE_4__*,int ,int *) ;
 int svn_fs_x__is_revision (int ) ;
 char* svn_fs_x__path_txn_node_children (int *,int const*,int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_file_size_get (scalar_t__*,int *,int *) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int svn_stringbuf_from_stream (int **,int *,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
get_dir_contents(svn_fs_x__dir_data_t *dir,
                 svn_fs_t *fs,
                 svn_fs_x__noderev_t *noderev,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_stream_t *contents;
  const svn_fs_x__id_t *id = &noderev->noderev_id;
  apr_size_t len;
  svn_stringbuf_t *text;
  svn_boolean_t incremental;


  dir->txn_filesize = SVN_INVALID_FILESIZE;


  if (noderev->data_rep
      && ! svn_fs_x__is_revision(noderev->data_rep->id.change_set))
    {

      const char *filename;
      apr_file_t *file;

      filename = svn_fs_x__path_txn_node_children(fs, id, scratch_pool,
                                                  scratch_pool);




      SVN_ERR(svn_io_file_open(&file, filename, APR_READ | APR_BUFFERED,
                               APR_OS_DEFAULT, scratch_pool));


      SVN_ERR(svn_io_file_size_get(&dir->txn_filesize, file, scratch_pool));
      len = (apr_size_t)dir->txn_filesize;


      contents = svn_stream_from_aprfile2(file, FALSE, scratch_pool);
      incremental = TRUE;
    }
  else if (noderev->data_rep)
    {

      len = noderev->data_rep->expanded_size;
      SVN_ERR(svn_fs_x__get_contents(&contents, fs, noderev->data_rep,
                                     FALSE, scratch_pool));
      incremental = FALSE;
    }
  else
    {

      dir->entries = apr_array_make(result_pool, 0,
                                    sizeof(svn_fs_x__dirent_t *));
      return SVN_NO_ERROR;
    }







  SVN_ERR(svn_stringbuf_from_stream(&text, contents, len, result_pool));
  SVN_ERR(svn_stream_close(contents));


  SVN_ERR(parse_dir_entries(&dir->entries, text, incremental, id,
                            result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
