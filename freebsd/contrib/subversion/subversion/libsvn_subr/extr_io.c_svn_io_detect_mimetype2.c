
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_7__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int block ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_READ ;
 int APR_STATUS_IS_EOF (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_FILENAME ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 int fileext_tolower (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,int *,int ,int ) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 TYPE_1__* svn_io_file_read (int *,unsigned char*,int*,int *) ;
 scalar_t__ svn_io_is_binary_data (unsigned char*,int) ;
 scalar_t__ svn_node_file ;
 int svn_path_splitext (int *,char const**,char const*,int *) ;

svn_error_t *
svn_io_detect_mimetype2(const char **mimetype,
                        const char *file,
                        apr_hash_t *mimetype_map,
                        apr_pool_t *pool)
{
  static const char * const generic_binary = "application/octet-stream";

  svn_node_kind_t kind;
  apr_file_t *fh;
  svn_error_t *err;
  unsigned char block[1024];
  apr_size_t amt_read = sizeof(block);


  *mimetype = ((void*)0);




  if (mimetype_map)
    {
      const char *type_from_map;
      char *path_ext;

      svn_path_splitext(((void*)0), (const char **)&path_ext, file, pool);
      fileext_tolower(path_ext);
      if ((type_from_map = svn_hash_gets(mimetype_map, path_ext)))
        {
          *mimetype = type_from_map;
          return SVN_NO_ERROR;
        }
    }


  SVN_ERR(svn_io_check_path(file, &kind, pool));
  if (kind != svn_node_file)
    return svn_error_createf(SVN_ERR_BAD_FILENAME, ((void*)0),
                             _("Can't detect MIME type of non-file '%s'"),
                             svn_dirent_local_style(file, pool));

  SVN_ERR(svn_io_file_open(&fh, file, APR_READ, 0, pool));


  err = svn_io_file_read(fh, block, &amt_read, pool);
  if (err && ! APR_STATUS_IS_EOF(err->apr_err))
    return err;
  svn_error_clear(err);


  SVN_ERR(svn_io_file_close(fh, pool));

  if (svn_io_is_binary_data(block, amt_read))
    *mimetype = generic_binary;

  return SVN_NO_ERROR;
}
