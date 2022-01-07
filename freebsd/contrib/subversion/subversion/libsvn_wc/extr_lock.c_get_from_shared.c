
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int apr_pool_t ;


 int * svn_wc__db_temp_get_access (int *,char const*,int *) ;

__attribute__((used)) static svn_wc_adm_access_t *
get_from_shared(const char *abspath,
                svn_wc__db_t *db,
                apr_pool_t *scratch_pool)
{

  if (db == ((void*)0))
    return ((void*)0);
  return svn_wc__db_temp_get_access(db, abspath, scratch_pool);
}
