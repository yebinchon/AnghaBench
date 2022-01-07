
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_CONFIG_REALMSTRING_KEY ;
 int SVN_ERR (int ) ;
 int SVN_ERR_NO_AUTH_FILE_PATH ;
 int SVN_ERR_W (int ,int ) ;
 int SVN_HASH_TERMINATOR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,int ) ;
 int svn_auth__file_path (char const**,char const*,char const*,char const*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_hash_write2 (int *,int *,int ,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;
 int * svn_string_create (char const*,int *) ;

svn_error_t *
svn_config_write_auth_data(apr_hash_t *hash,
                           const char *cred_kind,
                           const char *realmstring,
                           const char *config_dir,
                           apr_pool_t *pool)
{
  svn_stream_t *stream;
  const char *auth_path, *tmp_path;

  SVN_ERR(svn_auth__file_path(&auth_path, cred_kind, realmstring, config_dir,
                              pool));
  if (! auth_path)
    return svn_error_create(SVN_ERR_NO_AUTH_FILE_PATH, ((void*)0),
                            _("Unable to locate auth file"));




  svn_hash_sets(hash, SVN_CONFIG_REALMSTRING_KEY,
                svn_string_create(realmstring, pool));

  SVN_ERR_W(svn_stream_open_unique(&stream, &tmp_path,
                                   svn_dirent_dirname(auth_path, pool),
                                   svn_io_file_del_on_pool_cleanup,
                                   pool, pool),
            _("Unable to open auth file for writing"));
  SVN_ERR_W(svn_hash_write2(hash, stream, SVN_HASH_TERMINATOR, pool),
            apr_psprintf(pool, _("Error writing hash to '%s'"),
                         svn_dirent_local_style(auth_path, pool)));
  SVN_ERR(svn_stream_close(stream));
  SVN_ERR(svn_io_file_rename2(tmp_path, auth_path, FALSE, pool));




  svn_hash_sets(hash, SVN_CONFIG_REALMSTRING_KEY, ((void*)0));

  return SVN_NO_ERROR;
}
