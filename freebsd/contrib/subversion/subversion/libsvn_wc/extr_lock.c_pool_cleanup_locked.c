
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * pool; int abspath; int * db; scalar_t__ closed; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
struct TYPE_10__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int APR_SUCCESS ;
 int FALSE ;
 scalar_t__ TRUE ;
 TYPE_2__* close_single (TYPE_1__*,int ,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc__adm_area_exists (int ,int *) ;
 scalar_t__ svn_wc__db_is_closed (int *) ;
 TYPE_2__* svn_wc__db_open (int **,int *,int ,scalar_t__,int *,int *) ;
 TYPE_2__* svn_wc__db_wclock_release (int *,int ,int *) ;
 TYPE_2__* svn_wc__db_wq_fetch_next (int *,int **,int *,int ,int ,int *,int *) ;

__attribute__((used)) static apr_status_t
pool_cleanup_locked(void *p)
{
  svn_wc_adm_access_t *lock = p;
  apr_uint64_t id;
  svn_skel_t *work_item;
  svn_error_t *err;

  if (lock->closed)
    return APR_SUCCESS;


  if (svn_wc__db_is_closed(lock->db))
    {
      apr_pool_t *scratch_pool;
      svn_wc__db_t *db;

      lock->closed = TRUE;



      if (!svn_wc__adm_area_exists(lock->abspath, lock->pool))
        return APR_SUCCESS;







      scratch_pool = svn_pool_create(lock->pool);

      err = svn_wc__db_open(&db, ((void*)0) , FALSE, TRUE,
                            scratch_pool, scratch_pool);
      if (!err)
        {
          err = svn_wc__db_wq_fetch_next(&id, &work_item, db, lock->abspath, 0,
                                         scratch_pool, scratch_pool);
          if (!err && work_item == ((void*)0))
            {


              err = svn_wc__db_wclock_release(db, lock->abspath, scratch_pool);
            }
        }
      svn_error_clear(err);


      svn_pool_destroy(scratch_pool);

      return APR_SUCCESS;
    }


  err = svn_wc__db_wq_fetch_next(&id, &work_item, lock->db, lock->abspath, 0,
                                 lock->pool, lock->pool);


  if (!err)
    err = close_single(lock,
                       work_item != ((void*)0) ,
                       lock->pool);

  if (err)
    {
      apr_status_t apr_err = err->apr_err;
      svn_error_clear(err);
      return apr_err;
    }

  return APR_SUCCESS;
}
