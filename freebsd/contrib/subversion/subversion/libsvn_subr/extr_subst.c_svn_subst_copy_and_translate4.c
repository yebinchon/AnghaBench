
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_node_kind_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_IO_INCONSISTENT_EOL ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int *) ;
 int create_special_file_from_stream (int *,char const*,int *) ;
 int detranslate_special_file (char const*,char const*,int ,void*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_createf (scalar_t__,TYPE_1__*,int ,int ) ;
 TYPE_1__* svn_error_trace (int ) ;
 int svn_io_check_special_path (char const*,int *,scalar_t__*,int *) ;
 int svn_io_copy_file (char const*,char const*,int ,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_file_del_none ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 int svn_stream_close (int *) ;
 TYPE_1__* svn_stream_copy3 (int *,int *,int ,void*,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;
 int svn_subst_read_specialfile (int **,char const*,int *,int *) ;
 int * svn_subst_stream_translated (int *,char const*,scalar_t__,int *,scalar_t__,int *) ;

svn_error_t *
svn_subst_copy_and_translate4(const char *src,
                              const char *dst,
                              const char *eol_str,
                              svn_boolean_t repair,
                              apr_hash_t *keywords,
                              svn_boolean_t expand,
                              svn_boolean_t special,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *pool)
{
  svn_stream_t *src_stream;
  svn_stream_t *dst_stream;
  const char *dst_tmp;
  svn_error_t *err;
  svn_node_kind_t kind;
  svn_boolean_t path_special;

  SVN_ERR(svn_io_check_special_path(src, &kind, &path_special, pool));



  if (special || path_special)
    {
      if (expand)
        {
          if (path_special)
            {
              SVN_ERR(svn_subst_read_specialfile(&src_stream, src, pool, pool));
            }
          else
            {
              SVN_ERR(svn_stream_open_readonly(&src_stream, src, pool, pool));
            }

          SVN_ERR(create_special_file_from_stream(src_stream, dst, pool));

          return svn_error_trace(svn_stream_close(src_stream));
        }


      return svn_error_trace(detranslate_special_file(src, dst,
                                                      cancel_func,
                                                      cancel_baton,
                                                      pool));
    }


  if (! (eol_str || (keywords && (apr_hash_count(keywords) > 0))))
    return svn_error_trace(svn_io_copy_file(src, dst, FALSE, pool));


  SVN_ERR(svn_stream_open_readonly(&src_stream, src, pool, pool));



  SVN_ERR(svn_stream_open_unique(&dst_stream, &dst_tmp,
                                 svn_dirent_dirname(dst, pool),
                                 svn_io_file_del_none, pool, pool));

  dst_stream = svn_subst_stream_translated(dst_stream, eol_str, repair,
                                           keywords, expand, pool);


  err = svn_stream_copy3(src_stream, dst_stream, cancel_func, cancel_baton,
                         pool);
  if (err)
    {

      if (err->apr_err == SVN_ERR_IO_INCONSISTENT_EOL)
        err = svn_error_createf(SVN_ERR_IO_INCONSISTENT_EOL, err,
                                _("File '%s' has inconsistent newlines"),
                                svn_dirent_local_style(src, pool));
      return svn_error_compose_create(err, svn_io_remove_file2(dst_tmp,
                                                               FALSE, pool));
    }


  SVN_ERR(svn_io_file_rename2(dst_tmp, dst, FALSE, pool));


  SVN_ERR(svn_io_copy_perms(src, dst, pool));

  return SVN_NO_ERROR;
}
