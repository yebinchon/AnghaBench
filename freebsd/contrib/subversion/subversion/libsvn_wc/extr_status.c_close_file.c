
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_lock_t ;
typedef int svn_error_t ;
struct file_baton {int local_abspath; TYPE_2__* edit_baton; scalar_t__ prop_changed; scalar_t__ text_changed; int name; int dir_baton; scalar_t__ added; } ;
typedef enum svn_wc_status_kind { ____Placeholder_svn_wc_status_kind } svn_wc_status_kind ;
typedef int apr_pool_t ;
struct TYPE_3__ {int check_working_copy; scalar_t__ repos_locks; } ;
struct TYPE_4__ {TYPE_1__ wb; int db; } ;


 int FALSE ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 char* find_dir_repos_relpath (int ,int *) ;
 int svn_fspath__join (char*,char const*,int *) ;
 int * svn_hash_gets (scalar_t__,int ) ;
 char* svn_relpath_join (char const*,int ,int *) ;
 int svn_wc_status_added ;
 int svn_wc_status_modified ;
 int * tweak_statushash (struct file_baton*,int *,int ,int ,int ,int ,int,int,int,int ,int const*,int *) ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *text_checksum,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  enum svn_wc_status_kind repos_node_status;
  enum svn_wc_status_kind repos_text_status;
  enum svn_wc_status_kind repos_prop_status;
  const svn_lock_t *repos_lock = ((void*)0);


  if (! (fb->added || fb->prop_changed || fb->text_changed))
    return SVN_NO_ERROR;


  if (fb->added)
    {
      repos_node_status = svn_wc_status_added;
      repos_text_status = fb->text_changed ? svn_wc_status_modified
                                           : 0 ;
      repos_prop_status = fb->prop_changed ? svn_wc_status_modified
                                           : 0 ;

      if (fb->edit_baton->wb.repos_locks)
        {
          const char *dir_repos_relpath = find_dir_repos_relpath(fb->dir_baton,
                                                                 pool);



          const char *repos_relpath = svn_relpath_join(dir_repos_relpath,
                                                       fb->name, pool);

          repos_lock = svn_hash_gets(fb->edit_baton->wb.repos_locks,
                                     svn_fspath__join("/", repos_relpath,
                                                      pool));
        }
    }
  else
    {
      repos_node_status = (fb->text_changed || fb->prop_changed)
                                 ? svn_wc_status_modified
                                 : 0 ;
      repos_text_status = fb->text_changed ? svn_wc_status_modified
                                           : 0 ;
      repos_prop_status = fb->prop_changed ? svn_wc_status_modified
                                           : 0 ;
    }

  return tweak_statushash(fb, ((void*)0), FALSE, fb->edit_baton->db,
                          fb->edit_baton->wb.check_working_copy,
                          fb->local_abspath, repos_node_status,
                          repos_text_status, repos_prop_status,
                          SVN_INVALID_REVNUM, repos_lock, pool);
}
