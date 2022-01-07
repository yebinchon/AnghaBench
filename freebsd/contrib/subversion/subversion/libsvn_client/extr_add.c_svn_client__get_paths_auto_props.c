
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_magic__cookie_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int mimetypes_map; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_MIME_TYPE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,int ,int ,int ) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int get_auto_props_for_pattern (int *,char const**,scalar_t__*,int ,char const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (int ) ;
 int svn_dirent_basename (char const*,int *) ;
 int svn_io_detect_mimetype2 (char const**,char const*,int ,int *) ;
 int svn_io_is_file_executable (scalar_t__*,char const*,int *) ;
 int svn_magic__detect_binary_mimetype (char const**,char const*,int *,int *,int *) ;
 int svn_string_create (char const*,int *) ;
 int svn_string_create_empty (int *) ;

svn_error_t *
svn_client__get_paths_auto_props(apr_hash_t **properties,
                                 const char **mimetype,
                                 const char *path,
                                 svn_magic__cookie_t *magic_cookie,
                                 apr_hash_t *autoprops,
                                 svn_client_ctx_t *ctx,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_boolean_t have_executable = FALSE;

  *properties = apr_hash_make(result_pool);
  *mimetype = ((void*)0);

  if (autoprops)
    {
      for (hi = apr_hash_first(scratch_pool, autoprops);
           hi != ((void*)0);
           hi = apr_hash_next(hi))
        {
          const char *pattern = apr_hash_this_key(hi);
          apr_hash_t *propvals = apr_hash_this_val(hi);

          get_auto_props_for_pattern(*properties, mimetype, &have_executable,
                                     svn_dirent_basename(path, scratch_pool),
                                     pattern, propvals, scratch_pool);
        }
    }


  if (! *mimetype)
    {
      SVN_ERR(svn_io_detect_mimetype2(mimetype, path, ctx->mimetypes_map,
                                      result_pool));



      if (magic_cookie &&
          (!*mimetype ||
           strcmp(*mimetype, "application/octet-stream") == 0))
        {
          const char *magic_mimetype;
          SVN_ERR(svn_magic__detect_binary_mimetype(&magic_mimetype,
                                                    path, magic_cookie,
                                                    result_pool,
                                                    scratch_pool));
          if (magic_mimetype)
            *mimetype = magic_mimetype;
        }

      if (*mimetype)
        apr_hash_set(*properties, SVN_PROP_MIME_TYPE,
                     strlen(SVN_PROP_MIME_TYPE),
                     svn_string_create(*mimetype, result_pool));
    }


  if (! have_executable)
    {
      svn_boolean_t executable = FALSE;
      SVN_ERR(svn_io_is_file_executable(&executable, path, scratch_pool));
      if (executable)
        apr_hash_set(*properties, SVN_PROP_EXECUTABLE,
                     strlen(SVN_PROP_EXECUTABLE),
                     svn_string_create_empty(result_pool));
    }

  return SVN_NO_ERROR;
}
