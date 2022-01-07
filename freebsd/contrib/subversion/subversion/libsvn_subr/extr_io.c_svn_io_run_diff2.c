
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_EXTERNAL_PROGRAM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 char** apr_palloc (int *,int) ;
 char* svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char*,int) ;
 int svn_io_run_cmd (char const*,char const*,char const**,int*,int *,int ,int *,int *,int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_io_run_diff2(const char *dir,
                 const char *const *user_args,
                 int num_user_args,
                 const char *label1,
                 const char *label2,
                 const char *from,
                 const char *to,
                 int *pexitcode,
                 apr_file_t *outfile,
                 apr_file_t *errfile,
                 const char *diff_cmd,
                 apr_pool_t *pool)
{
  const char **args;
  int i;
  int exitcode;
  int nargs = 4;
  apr_pool_t *subpool = svn_pool_create(pool);

  if (pexitcode == ((void*)0))
    pexitcode = &exitcode;

  if (user_args != ((void*)0))
    nargs += num_user_args;
  else
    nargs += 1;

  if (label1 != ((void*)0))
    nargs += 2;
  if (label2 != ((void*)0))
    nargs += 2;

  args = apr_palloc(subpool, nargs * sizeof(char *));

  i = 0;
  args[i++] = diff_cmd;

  if (user_args != ((void*)0))
    {
      int j;
      for (j = 0; j < num_user_args; ++j)
        args[i++] = user_args[j];
    }
  else
    args[i++] = "-u";

  if (label1 != ((void*)0))
    {
      args[i++] = "-L";
      args[i++] = label1;
    }
  if (label2 != ((void*)0))
    {
      args[i++] = "-L";
      args[i++] = label2;
    }

  args[i++] = svn_dirent_local_style(from, subpool);
  args[i++] = svn_dirent_local_style(to, subpool);
  args[i++] = ((void*)0);

  SVN_ERR_ASSERT(i == nargs);

  SVN_ERR(svn_io_run_cmd(dir, diff_cmd, args, pexitcode, ((void*)0), TRUE,
                         ((void*)0), outfile, errfile, subpool));
  if (*pexitcode != 0 && *pexitcode != 1)
    return svn_error_createf(SVN_ERR_EXTERNAL_PROGRAM, ((void*)0),
                             _("'%s' returned %d"),
                             svn_dirent_local_style(diff_cmd, pool),
                             *pexitcode);

  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
