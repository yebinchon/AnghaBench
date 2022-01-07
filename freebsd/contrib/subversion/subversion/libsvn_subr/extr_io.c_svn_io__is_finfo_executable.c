
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_uid_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_gid_t ;
struct TYPE_3__ {int protection; int group; int user; } ;
typedef TYPE_1__ apr_finfo_t ;


 int APR_GEXECUTE ;
 scalar_t__ APR_SUCCESS ;
 int APR_UEXECUTE ;
 int APR_WEXECUTE ;
 int FALSE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_gid_compare (int ,int ) ;
 scalar_t__ apr_uid_compare (int ,int ) ;
 scalar_t__ apr_uid_current (int *,int *,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

svn_error_t *
svn_io__is_finfo_executable(svn_boolean_t *executable,
                            apr_finfo_t *file_info,
                            apr_pool_t *pool)
{
  *executable = FALSE;


  return SVN_NO_ERROR;
}
