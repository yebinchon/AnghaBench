
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int config_access_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * get_file_config (int **,int **,int *,char const*,int ,int *) ;
 int * get_generic_config (int **,int **,int *,char const*,int ,int *) ;
 int * get_repos_config (int **,int **,int *,char const*,int ,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_trace (int *) ;
 scalar_t__ svn_path_is_url (char const*) ;

svn_error_t *
svn_repos__get_config(svn_stream_t **stream,
                      svn_checksum_t **checksum,
                      config_access_t *access,
                      const char *path,
                      svn_boolean_t must_exist,
                      apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  if (svn_path_is_url(path))
    err = get_repos_config(stream, checksum, access, path, must_exist,
                           scratch_pool);
  else
    err = get_file_config(stream, checksum, access, path, must_exist,
                          scratch_pool);



  if (err)
    {
      svn_error_t *err2 = get_generic_config(stream, checksum, access, path,
                                             must_exist, scratch_pool);
      if (err2)
        {
          svn_error_clear(err2);
        }
      else
        {
          svn_error_clear(err);
          err = SVN_NO_ERROR;
        }
    }

  return svn_error_trace(err);
}
