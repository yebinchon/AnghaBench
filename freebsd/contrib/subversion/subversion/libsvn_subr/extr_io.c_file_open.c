
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
struct TYPE_3__ {int protection; } ;
typedef TYPE_1__ apr_finfo_t ;
typedef int apr_fileperms_t ;
typedef int apr_file_t ;


 int APR_CREATE ;
 int APR_EXCL ;
 int APR_FREADONLY ;
 scalar_t__ APR_FROM_OS_ERROR (int ) ;
 int APR_WRITE ;
 int ERROR_ACCESS_DENIED ;
 int SVN__APR_FINFO_READONLY ;
 int WIN32_RETRY_LOOP (scalar_t__,scalar_t__) ;
 scalar_t__ apr_file_open (int **,char const*,int,int ,int *) ;
 int apr_stat (TYPE_1__*,char const*,int ,int *) ;

__attribute__((used)) static apr_status_t
file_open(apr_file_t **f,
          const char *fname_apr,
          apr_int32_t flag,
          apr_fileperms_t perm,
          svn_boolean_t retry_on_failure,
          apr_pool_t *pool)
{
  apr_status_t status = apr_file_open(f, fname_apr, flag, perm, pool);

  if (retry_on_failure)
    {
      WIN32_RETRY_LOOP(status, apr_file_open(f, fname_apr, flag, perm, pool));
    }
  return status;
}
