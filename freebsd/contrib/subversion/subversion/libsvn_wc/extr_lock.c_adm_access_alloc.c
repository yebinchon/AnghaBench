
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * pool; int abspath; int path; scalar_t__ db_provided; int * db; int * entries_all; int closed; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * add_to_shared (TYPE_1__*,int *) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int apr_pstrdup (int *,char const*) ;
 int pool_cleanup_child ;
 int pool_cleanup_locked ;
 int pool_cleanup_readonly ;
 int svn_dirent_get_absolute (int *,char const*,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 scalar_t__ svn_wc__adm_retrieve_internal2 (int *,int ,int *) ;
 int svn_wc__db_wclock_obtain (int *,int ,int ,int ,int *) ;
 int svn_wc__db_wclock_owns_lock (scalar_t__*,int *,char const*,int ,int *) ;
 int svn_wc__db_wclock_release (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
adm_access_alloc(svn_wc_adm_access_t **adm_access,
                 const char *path,
                 svn_wc__db_t *db,
                 svn_boolean_t db_provided,
                 svn_boolean_t write_lock,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_wc_adm_access_t *lock = apr_palloc(result_pool, sizeof(*lock));

  lock->closed = FALSE;
  lock->entries_all = ((void*)0);
  lock->db = db;
  lock->db_provided = db_provided;
  lock->path = apr_pstrdup(result_pool, path);
  lock->pool = result_pool;

  SVN_ERR(svn_dirent_get_absolute(&lock->abspath, path, result_pool));

  *adm_access = lock;

  if (write_lock)
    {
      svn_boolean_t owns_lock;


      SVN_ERR(svn_wc__db_wclock_owns_lock(&owns_lock, db, path, FALSE,
                                          scratch_pool));





      if (!owns_lock
          || svn_wc__adm_retrieve_internal2(db, lock->abspath, scratch_pool))
        {
          SVN_ERR(svn_wc__db_wclock_obtain(db, lock->abspath, 0, FALSE,
                                           scratch_pool));
        }
    }

  err = add_to_shared(lock, scratch_pool);

  if (err)
    return svn_error_compose_create(
                err,
                svn_wc__db_wclock_release(db, lock->abspath, scratch_pool));
  apr_pool_cleanup_register(lock->pool, lock,
                            write_lock
                              ? pool_cleanup_locked
                              : pool_cleanup_readonly,
                            pool_cleanup_child);

  return SVN_NO_ERROR;
}
