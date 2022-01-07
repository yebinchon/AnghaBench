
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pool; int db; scalar_t__ closed; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
struct TYPE_7__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int FALSE ;
 TYPE_2__* close_single (TYPE_1__*,int ,int ) ;
 int svn_error_clear (TYPE_2__*) ;
 scalar_t__ svn_wc__db_is_closed (int ) ;

__attribute__((used)) static apr_status_t
pool_cleanup_readonly(void *data)
{
  svn_wc_adm_access_t *lock = data;
  svn_error_t *err;

  if (lock->closed)
    return APR_SUCCESS;




  if (svn_wc__db_is_closed(lock->db))
    return APR_SUCCESS;




  err = close_single(lock, FALSE , lock->pool);
  if (err)
    {
      apr_status_t result = err->apr_err;
      svn_error_clear(err);
      return result;
    }

  return APR_SUCCESS;
}
