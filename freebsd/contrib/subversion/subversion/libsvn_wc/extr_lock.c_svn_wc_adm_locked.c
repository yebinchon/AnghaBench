
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int abspath; int db; int pool; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int TRUE ;
 int svn_error_clear (int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 int * svn_wc__db_wclock_owns_lock (int *,int ,int ,int ,int *) ;

svn_boolean_t
svn_wc_adm_locked(const svn_wc_adm_access_t *adm_access)
{
  svn_boolean_t locked;
  apr_pool_t *subpool = svn_pool_create(adm_access->pool);
  svn_error_t *err = svn_wc__db_wclock_owns_lock(&locked, adm_access->db,
                                                 adm_access->abspath, TRUE,
                                                 subpool);
  svn_pool_destroy(subpool);

  if (err)
    {
      svn_error_clear(err);

      return FALSE;
    }

  return locked;
}
