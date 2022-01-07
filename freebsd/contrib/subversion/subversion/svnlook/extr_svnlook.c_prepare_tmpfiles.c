
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MIME_TYPE ;
 int TRUE ;
 int assert (int) ;
 int dump_contents (int *,int *,char const*,int *) ;
 int svn_fs_node_prop (TYPE_1__**,int *,char const*,int ,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 scalar_t__ svn_mime_type_is_binary (int ) ;
 int svn_stream_open_unique (int **,char const**,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
prepare_tmpfiles(const char **tmpfile1,
                 const char **tmpfile2,
                 svn_boolean_t *is_binary,
                 svn_fs_root_t *root1,
                 const char *path1,
                 svn_fs_root_t *root2,
                 const char *path2,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_string_t *mimetype;
  svn_stream_t *stream;


  *tmpfile1 = ((void*)0);
  *tmpfile2 = ((void*)0);
  *is_binary = FALSE;

  assert(path1 && path2);



  if (root1)
    {
      SVN_ERR(svn_fs_node_prop(&mimetype, root1, path1,
                               SVN_PROP_MIME_TYPE, scratch_pool));
      if (mimetype && svn_mime_type_is_binary(mimetype->data))
        {
          *is_binary = TRUE;
          return SVN_NO_ERROR;
        }
    }
  if (root2)
    {
      SVN_ERR(svn_fs_node_prop(&mimetype, root2, path2,
                               SVN_PROP_MIME_TYPE, scratch_pool));
      if (mimetype && svn_mime_type_is_binary(mimetype->data))
        {
          *is_binary = TRUE;
          return SVN_NO_ERROR;
        }
    }



  SVN_ERR(svn_stream_open_unique(&stream, tmpfile1, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));
  SVN_ERR(dump_contents(stream, root1, path1, scratch_pool));

  SVN_ERR(svn_stream_open_unique(&stream, tmpfile2, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));
  SVN_ERR(dump_contents(stream, root2, path2, scratch_pool));

  return SVN_NO_ERROR;
}
