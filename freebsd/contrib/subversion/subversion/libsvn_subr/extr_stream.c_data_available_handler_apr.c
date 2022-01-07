
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct baton_apr {int file; int pool; } ;
typedef scalar_t__ apr_status_t ;
struct TYPE_4__ {int f; } ;
struct TYPE_5__ {int reqevents; int p; TYPE_1__ desc; int desc_type; } ;
typedef TYPE_2__ apr_pollfd_t ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int APR_POLLIN ;
 int APR_POLL_FILE ;
 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_TIMEUP (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 int FALSE ;
 scalar_t__ PeekNamedPipe (int ,int *,int ,int *,scalar_t__*,int *) ;
 int SVN_ERR_STREAM_NOT_SUPPORTED ;
 int * SVN_NO_ERROR ;
 int * _ (char*) ;
 scalar_t__ apr_get_os_error () ;
 scalar_t__ apr_os_file_get (int *,int ) ;
 scalar_t__ apr_poll (TYPE_2__*,int,int*,int ) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
data_available_handler_apr(void *baton, svn_boolean_t *data_available)
{
  struct baton_apr *btn = baton;
  apr_status_t status;

  apr_pollfd_t pfd;
  int n;

  pfd.desc_type = APR_POLL_FILE;
  pfd.desc.f = btn->file;
  pfd.p = btn->pool;

  pfd.reqevents = APR_POLLIN;

  status = apr_poll(&pfd, 1, &n, 0);

  if (status == APR_SUCCESS)
    {
      *data_available = (n > 0);
      return SVN_NO_ERROR;
    }
  else if (APR_STATUS_IS_EOF(status) || APR_STATUS_IS_TIMEUP(status))
    {
      *data_available = FALSE;
      return SVN_NO_ERROR;
    }
  else
    {
      return svn_error_create(SVN_ERR_STREAM_NOT_SUPPORTED,
                              svn_error_wrap_apr(
                                  status,
                                  _("Polling for available data on filestream "
                                    "failed")),
                              ((void*)0));
    }
}
