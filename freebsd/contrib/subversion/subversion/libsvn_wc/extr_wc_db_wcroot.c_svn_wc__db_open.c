
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int verify_format; scalar_t__ timeout; void* exclusive; int * state_pool; int dir_data; void* enforce_empty_wq; int * config; } ;
typedef TYPE_1__ svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef void* svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef scalar_t__ apr_int32_t ;


 scalar_t__ APR_INT32_MAX ;
 void* FALSE ;
 int SVN_CONFIG_OPTION_SQLITE_BUSY_TIMEOUT ;
 int SVN_CONFIG_OPTION_SQLITE_EXCLUSIVE ;
 int SVN_CONFIG_SECTION_WORKING_COPY ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int * svn_config_get_bool (int *,void**,int ,int ,void*) ;
 int * svn_config_get_int64 (int *,scalar_t__*,int ,int ,int ) ;
 int svn_error_clear (int *) ;

svn_error_t *
svn_wc__db_open(svn_wc__db_t **db,
                svn_config_t *config,
                svn_boolean_t open_without_upgrade,
                svn_boolean_t enforce_empty_wq,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  *db = apr_pcalloc(result_pool, sizeof(**db));
  (*db)->config = config;
  (*db)->verify_format = !open_without_upgrade;
  (*db)->enforce_empty_wq = enforce_empty_wq;
  (*db)->dir_data = apr_hash_make(result_pool);

  (*db)->state_pool = result_pool;


  if (config)
    {
      svn_error_t *err;
      svn_boolean_t sqlite_exclusive = FALSE;
      apr_int64_t timeout;

      err = svn_config_get_bool(config, &sqlite_exclusive,
                                SVN_CONFIG_SECTION_WORKING_COPY,
                                SVN_CONFIG_OPTION_SQLITE_EXCLUSIVE,
                                FALSE);
      if (err)
        {
          svn_error_clear(err);
        }
      else
        (*db)->exclusive = sqlite_exclusive;

      err = svn_config_get_int64(config, &timeout,
                                 SVN_CONFIG_SECTION_WORKING_COPY,
                                 SVN_CONFIG_OPTION_SQLITE_BUSY_TIMEOUT,
                                 0);
      if (err || timeout < 0 || timeout > APR_INT32_MAX)
        svn_error_clear(err);
      else
        (*db)->timeout = (apr_int32_t)timeout;
    }

  return SVN_NO_ERROR;
}
