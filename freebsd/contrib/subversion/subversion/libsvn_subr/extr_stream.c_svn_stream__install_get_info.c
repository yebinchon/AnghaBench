
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct install_baton_t* baton; } ;
typedef TYPE_2__ svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int file; } ;
struct install_baton_t {TYPE_1__ baton_apr; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_finfo_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ apr_file_info_get (int *,int ,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int *) ;

svn_error_t *
svn_stream__install_get_info(apr_finfo_t *finfo,
                             svn_stream_t *install_stream,
                             apr_int32_t wanted,
                             apr_pool_t *scratch_pool)
{
  struct install_baton_t *ib = install_stream->baton;
  apr_status_t status;

  status = apr_file_info_get(finfo, wanted, ib->baton_apr.file);

  if (status)
    return svn_error_wrap_apr(status, ((void*)0));

  return SVN_NO_ERROR;
}
