
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* svn_wc_status_func4_t ) (void*,char const*,int *,int *) ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ svn_wc__internal_status_t ;
typedef int svn_lock_t ;
typedef int svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct walk_status_baton {int check_working_copy; int ignore_text_mods; int db; scalar_t__ repos_locks; } ;
struct svn_wc__db_info_t {int dummy; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assemble_status (TYPE_1__**,int ,char const*,char const*,char const*,char const*,struct svn_wc__db_info_t const*,int const*,int ,int ,int ,int const*,int *,int *) ;
 int get_repos_root_url_relpath (char const**,char const**,char const**,struct svn_wc__db_info_t const*,char const*,char const*,char const*,int ,char const*,int *,int *) ;
 int stub1 (void*,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fspath__join (char*,char const*,int *) ;
 int * svn_hash_gets (scalar_t__,int ) ;

__attribute__((used)) static svn_error_t *
send_status_structure(const struct walk_status_baton *wb,
                      const char *local_abspath,
                      const char *parent_repos_root_url,
                      const char *parent_repos_relpath,
                      const char *parent_repos_uuid,
                      const struct svn_wc__db_info_t *info,
                      const svn_io_dirent2_t *dirent,
                      svn_boolean_t get_all,
                      svn_wc_status_func4_t status_func,
                      void *status_baton,
                      apr_pool_t *scratch_pool)
{
  svn_wc__internal_status_t *statstruct;
  const svn_lock_t *repos_lock = ((void*)0);


  if (wb->repos_locks)
    {
      const char *repos_relpath, *repos_root_url, *repos_uuid;

      SVN_ERR(get_repos_root_url_relpath(&repos_relpath, &repos_root_url,
                                         &repos_uuid,
                                         info, parent_repos_relpath,
                                         parent_repos_root_url,
                                         parent_repos_uuid,
                                         wb->db, local_abspath,
                                         scratch_pool, scratch_pool));
      if (repos_relpath)
        {


          repos_lock = svn_hash_gets(wb->repos_locks,
                                     svn_fspath__join("/", repos_relpath,
                                                      scratch_pool));
        }
    }

  SVN_ERR(assemble_status(&statstruct, wb->db, local_abspath,
                          parent_repos_root_url, parent_repos_relpath,
                          parent_repos_uuid,
                          info, dirent, get_all,
                          wb->ignore_text_mods, wb->check_working_copy,
                          repos_lock, scratch_pool, scratch_pool));

  if (statstruct && status_func)
    return svn_error_trace((*status_func)(status_baton, local_abspath,
                                          &statstruct->s,
                                          scratch_pool));

  return SVN_NO_ERROR;
}
