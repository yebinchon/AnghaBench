
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int reqevents; int * p; } ;
typedef TYPE_1__ apr_pollfd_t ;


 int APR_POLLIN ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_poll (TYPE_1__*,int,int*,int ) ;

__attribute__((used)) static svn_boolean_t pending(apr_pollfd_t *pfd, apr_pool_t *pool)
{
  apr_status_t status;
  int n;

  pfd->p = pool;
  pfd->reqevents = APR_POLLIN;
  status = apr_poll(pfd, 1, &n, 0);
  return (status == APR_SUCCESS && n);
}
