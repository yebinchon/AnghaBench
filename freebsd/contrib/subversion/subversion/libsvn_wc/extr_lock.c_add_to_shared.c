
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int abspath; int db; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 scalar_t__ IS_MISSING (TYPE_1__*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_temp_close_access (int ,int ,TYPE_1__*,int *) ;
 TYPE_1__* svn_wc__db_temp_get_access (int ,int ,int *) ;
 int svn_wc__db_temp_set_access (int ,int ,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
add_to_shared(svn_wc_adm_access_t *lock, apr_pool_t *scratch_pool)
{

  {
    svn_wc_adm_access_t *prior = svn_wc__db_temp_get_access(lock->db,
                                                            lock->abspath,
                                                            scratch_pool);
    if (IS_MISSING(prior))
      SVN_ERR(svn_wc__db_temp_close_access(lock->db, lock->abspath,
                                           prior, scratch_pool));
  }

  svn_wc__db_temp_set_access(lock->db, lock->abspath, lock,
                             scratch_pool);

  return SVN_NO_ERROR;
}
