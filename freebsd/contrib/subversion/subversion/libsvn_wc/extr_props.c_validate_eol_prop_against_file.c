
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* (* svn_wc_canonicalize_svn_prop_get_file_t ) (TYPE_2__ const**,int *,void*,int *) ;
struct TYPE_16__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 scalar_t__ SVN_ERR_IO_INCONSISTENT_EOL ;
 int SVN_PROP_EOL_STYLE ;
 int _ (char*) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_createf (int ,TYPE_1__*,int ,char const*,...) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 scalar_t__ svn_mime_type_is_binary (int ) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_stream_close (int *) ;
 int svn_stream_empty (int *) ;
 int * svn_subst_stream_translated (int ,char*,int ,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
validate_eol_prop_against_file(const char *path,
                               svn_wc_canonicalize_svn_prop_get_file_t getter,
                               void *getter_baton,
                               apr_pool_t *pool)
{
  svn_stream_t *translating_stream;
  svn_error_t *err;
  const svn_string_t *mime_type;
  const char *path_display
    = svn_path_is_url(path) ? path : svn_dirent_local_style(path, pool);


  SVN_ERR(getter(&mime_type, ((void*)0), getter_baton, pool));


  if (mime_type && svn_mime_type_is_binary(mime_type->data))
    return svn_error_createf
      (SVN_ERR_ILLEGAL_TARGET, ((void*)0),
       _("Can't set '%s': "
         "file '%s' has binary mime type property"),
       SVN_PROP_EOL_STYLE, path_display);






  translating_stream = svn_subst_stream_translated(svn_stream_empty(pool),
                                                   "", FALSE, ((void*)0), FALSE,
                                                   pool);

  err = getter(((void*)0), translating_stream, getter_baton, pool);

  err = svn_error_compose_create(err, svn_stream_close(translating_stream));

  if (err && err->apr_err == SVN_ERR_IO_INCONSISTENT_EOL)
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, err,
                             _("File '%s' has inconsistent newlines"),
                             path_display);

  return svn_error_trace(err);
}
