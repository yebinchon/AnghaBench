
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * db; int db_provided; int abspath; scalar_t__ closed; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 scalar_t__ apr_hash_count (int *) ;
 int svn_error_clear (int *) ;
 scalar_t__ svn_wc__adm_area_exists (int ,int *) ;
 int svn_wc__db_close (int *) ;
 int svn_wc__db_temp_close_access (int *,int ,TYPE_1__*,int *) ;
 int * svn_wc__db_temp_get_all_access (int *,int *) ;
 int svn_wc__db_wclock_owns_lock (scalar_t__*,int *,int ,scalar_t__,int *) ;
 int * svn_wc__db_wclock_release (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
close_single(svn_wc_adm_access_t *adm_access,
             svn_boolean_t preserve_lock,
             apr_pool_t *scratch_pool)
{
  svn_boolean_t locked;

  if (adm_access->closed)
    return SVN_NO_ERROR;


  SVN_ERR(svn_wc__db_wclock_owns_lock(&locked, adm_access->db,
                                      adm_access->abspath, TRUE,
                                      scratch_pool));
  if (locked)
    {
      if (!preserve_lock)
        {






          svn_error_t *err = svn_wc__db_wclock_release(adm_access->db,
                                                       adm_access->abspath,
                                                       scratch_pool);
          if (err)
            {
              if (svn_wc__adm_area_exists(adm_access->abspath, scratch_pool))
                return err;
              svn_error_clear(err);
            }
        }
    }


  adm_access->closed = TRUE;


  SVN_ERR(svn_wc__db_temp_close_access(adm_access->db, adm_access->abspath,
                                       adm_access, scratch_pool));


  if (!adm_access->db_provided)
    {
      apr_hash_t *opened = svn_wc__db_temp_get_all_access(adm_access->db,
                                                          scratch_pool);
      if (apr_hash_count(opened) == 0)
        {
          SVN_ERR(svn_wc__db_close(adm_access->db));
          adm_access->db = ((void*)0);
        }
    }

  return SVN_NO_ERROR;
}
