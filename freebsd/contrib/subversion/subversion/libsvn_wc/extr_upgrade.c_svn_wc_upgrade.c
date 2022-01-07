
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_wc_upgrade_get_repos_info_t ;
typedef int svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,int *,int *) ;
struct TYPE_11__ {int uuid; int repos; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
struct upgrade_data_t {char const* root_abspath; int sdb; int wc_id; int repos_id; int * member_0; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 char* PRISTINE_STORAGE_RELPATH ;
 char* SDB_FILE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ;
 TYPE_2__* SVN_NO_ERROR ;
 int SVN_SQLITE__WITH_LOCK (int ,int ) ;
 int SVN_WC_ENTRY_THIS_DIR ;
 int SVN_WC__VERSION ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int apr_pstrdup (int *,int ) ;
 int ensure_repos_info (TYPE_1__*,char const*,int ,void*,int *,int *,int *) ;
 int is_old_wcroot (char const*,int *) ;
 char const* svn_dirent_join (char*,char*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 int svn_error_compose_create (TYPE_2__*,int ) ;
 TYPE_2__* svn_error_trace (int ) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_remove_dir2 (char const*,int ,int *,int *,int *) ;
 char* svn_wc__adm_child (char const*,char*,int *) ;
 TYPE_2__* svn_wc__db_bump_format (int*,scalar_t__*,int *,char const*,int *) ;
 int svn_wc__db_close (int *) ;
 int svn_wc__db_open (int **,int *,int ,int ,int *,int *) ;
 int svn_wc__db_upgrade_begin (int *,int *,int *,int *,char const*,int ,int ,int *) ;
 int svn_wc__db_wclock_obtain (int *,char const*,int ,int ,int *) ;
 int svn_wc__db_wclock_release (int *,char const*,int *) ;
 int svn_wc__db_wq_add (int *,char const*,int *,int *) ;
 int svn_wc__ensure_directory (char const*,int *) ;
 int svn_wc__read_entries_old (int **,char const*,int *,int *) ;
 int svn_wc__wq_build_file_move (int **,int *,char const*,char const*,char const*,int *,int *) ;
 int svn_wc__wq_build_postupgrade (int **,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
 int svn_wc__wq_run (int *,char const*,int ,void*,int *) ;
 int * svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_upgraded_path ;
 int upgrade_working_copy (int *,int *,char const*,int ,void*,int *,struct upgrade_data_t*,int ,void*,int (*) (void*,int *,int *),void*,int *,int *) ;

svn_error_t *
svn_wc_upgrade(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_wc_upgrade_get_repos_info_t repos_info_func,
               void *repos_info_baton,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db;
  struct upgrade_data_t data = { ((void*)0) };
  svn_skel_t *work_item, *work_items = ((void*)0);
  const char *pristine_from, *pristine_to, *db_from, *db_to;
  apr_hash_t *repos_cache = apr_hash_make(scratch_pool);
  svn_wc_entry_t *this_dir;
  apr_hash_t *entries;
  const char *root_adm_abspath;
  svn_error_t *err;
  int result_format;
  svn_boolean_t bumped_format;


  SVN_ERR(svn_wc__db_open(&db, ((void*)0) , TRUE, FALSE,
                          scratch_pool, scratch_pool));


  err = svn_wc__db_bump_format(&result_format, &bumped_format,
                               db, local_abspath,
                               scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_UPGRADE_REQUIRED)
        {
          return svn_error_trace(
                    svn_error_compose_create(
                            err,
                            svn_wc__db_close(db)));
        }

      svn_error_clear(err);

    }
  else
    {

      SVN_ERR(svn_wc__db_close(db));

      SVN_ERR_ASSERT(result_format == SVN_WC__VERSION);

      if (bumped_format && notify_func)
        {
          svn_wc_notify_t *notify;

          notify = svn_wc_create_notify(local_abspath,
                                        svn_wc_notify_upgraded_path,
                                        scratch_pool);

          notify_func(notify_baton, notify, scratch_pool);
        }

      return SVN_NO_ERROR;
    }

  SVN_ERR(is_old_wcroot(local_abspath, scratch_pool));
  SVN_ERR(svn_wc__read_entries_old(&entries, local_abspath,
                                   scratch_pool, scratch_pool));

  this_dir = svn_hash_gets(entries, SVN_WC_ENTRY_THIS_DIR);
  SVN_ERR(ensure_repos_info(this_dir, local_abspath, repos_info_func,
                            repos_info_baton, repos_cache,
                            scratch_pool, scratch_pool));


  if (!svn_hash_gets(repos_cache, this_dir->repos))
    svn_hash_sets(repos_cache,
                  apr_pstrdup(scratch_pool, this_dir->repos),
                  apr_pstrdup(scratch_pool, this_dir->uuid));


  data.root_abspath = svn_dirent_join(svn_wc__adm_child(local_abspath, "tmp",
                                                        scratch_pool),
                                       "wcng", scratch_pool);
  root_adm_abspath = svn_wc__adm_child(data.root_abspath, "",
                                       scratch_pool);
  SVN_ERR(svn_io_remove_dir2(root_adm_abspath, TRUE, ((void*)0), ((void*)0),
                             scratch_pool));
  SVN_ERR(svn_wc__ensure_directory(root_adm_abspath, scratch_pool));


  SVN_ERR(svn_wc__db_upgrade_begin(&data.sdb,
                                   &data.repos_id, &data.wc_id,
                                   db, data.root_abspath,
                                   this_dir->repos, this_dir->uuid,
                                   scratch_pool));







  SVN_ERR(svn_wc__db_wclock_obtain(db, data.root_abspath, 0, FALSE,
                                   scratch_pool));

  SVN_SQLITE__WITH_LOCK(
    upgrade_working_copy(((void*)0), db, local_abspath,
                         repos_info_func, repos_info_baton,
                         repos_cache, &data,
                         cancel_func, cancel_baton,
                         notify_func, notify_baton,
                         scratch_pool, scratch_pool),
    data.sdb);


  pristine_from = svn_wc__adm_child(data.root_abspath, PRISTINE_STORAGE_RELPATH,
                                    scratch_pool);
  pristine_to = svn_wc__adm_child(local_abspath, PRISTINE_STORAGE_RELPATH,
                                  scratch_pool);
  SVN_ERR(svn_wc__ensure_directory(pristine_from, scratch_pool));
  SVN_ERR(svn_wc__wq_build_file_move(&work_item, db, local_abspath,
                                     pristine_from, pristine_to,
                                     scratch_pool, scratch_pool));
  work_items = svn_wc__wq_merge(work_items, work_item, scratch_pool);


  SVN_ERR(svn_wc__wq_build_postupgrade(&work_item, scratch_pool));
  work_items = svn_wc__wq_merge(work_items, work_item, scratch_pool);
  SVN_ERR(svn_wc__db_wq_add(db, data.root_abspath, work_items, scratch_pool));

  SVN_ERR(svn_wc__db_wclock_release(db, data.root_abspath, scratch_pool));
  SVN_ERR(svn_wc__db_close(db));


  db_from = svn_wc__adm_child(data.root_abspath, SDB_FILE, scratch_pool);
  db_to = svn_wc__adm_child(local_abspath, SDB_FILE, scratch_pool);
  SVN_ERR(svn_io_file_rename2(db_from, db_to, FALSE, scratch_pool));


  SVN_ERR(svn_wc__db_open(&db, ((void*)0) , FALSE, FALSE,
                          scratch_pool, scratch_pool));
  SVN_ERR(svn_wc__wq_run(db, local_abspath, cancel_func, cancel_baton,
                         scratch_pool));
  SVN_ERR(svn_wc__db_close(db));


  SVN_ERR(svn_io_remove_dir2(data.root_abspath, FALSE, ((void*)0), ((void*)0),
                             scratch_pool));

  return SVN_NO_ERROR;
}
