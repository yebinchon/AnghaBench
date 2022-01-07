
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {int pool; int sock; } ;
typedef TYPE_2__ sock_baton_t ;
struct TYPE_5__ {int s; } ;
struct TYPE_7__ {TYPE_1__ desc; int desc_type; } ;
typedef TYPE_3__ apr_pollfd_t ;


 int APR_POLL_SOCKET ;
 int * SVN_NO_ERROR ;
 int pending (TYPE_3__*,int ) ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static svn_error_t *
sock_pending_cb(void *baton,
                svn_boolean_t *data_available)
{
  sock_baton_t *b = baton;
  apr_pollfd_t pfd;

  pfd.desc_type = APR_POLL_SOCKET;
  pfd.desc.s = b->sock;

  *data_available = pending(&pfd, b->pool);

  svn_pool_clear(b->pool);

  return SVN_NO_ERROR;
}
