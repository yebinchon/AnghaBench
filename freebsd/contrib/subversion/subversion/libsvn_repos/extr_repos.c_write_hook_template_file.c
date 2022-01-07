
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hook_path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS__HOOK_DESC_EXT ;
 int TRUE ;
 int apr_psprintf (int *,char*,char const*,int ) ;
 char* hook_template_text (char const*,char const*,char const*,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int svn_io_file_create (char const*,char const*,int *) ;
 int svn_io_set_file_executable (char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
write_hook_template_file(svn_repos_t *repos, const char *script_name,
                         const char *description,
                         const char *script,
                         apr_pool_t *pool)
{
  const char *template_path
    = svn_dirent_join(repos->hook_path,
                      apr_psprintf(pool, "%s%s",
                                   script_name, SVN_REPOS__HOOK_DESC_EXT),
                      pool);
  const char *contents
    = hook_template_text(script_name, description, script, pool);

  SVN_ERR(svn_io_file_create(template_path, contents, pool));
  SVN_ERR(svn_io_set_file_executable(template_path, TRUE, FALSE, pool));
  return SVN_NO_ERROR;
}
