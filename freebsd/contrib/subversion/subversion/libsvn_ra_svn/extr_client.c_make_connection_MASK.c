#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_socket_t ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  family; } ;
typedef  TYPE_1__ apr_sockaddr_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int APR_INET ; 
 int /*<<< orphan*/  APR_INET6 ; 
 int /*<<< orphan*/  APR_PROTO_TCP ; 
 int /*<<< orphan*/  APR_SO_KEEPALIVE ; 
 scalar_t__ APR_SUCCESS ; 
 int APR_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__**,char const*,int,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *FUNC8(const char *hostname, unsigned short port,
                                    apr_socket_t **sock, apr_pool_t *pool)
{
  apr_sockaddr_t *sa;
  apr_status_t status;
  int family = APR_INET;

  /* Make sure we have IPV6 support first before giving apr_sockaddr_info_get
     APR_UNSPEC, because it may give us back an IPV6 address even if we can't
     create IPV6 sockets.  */

#if APR_HAVE_IPV6
#ifdef MAX_SECS_TO_LINGER
  status = apr_socket_create(sock, APR_INET6, SOCK_STREAM, pool);
#else
  status = apr_socket_create(sock, APR_INET6, SOCK_STREAM,
                             APR_PROTO_TCP, pool);
#endif
  if (status == 0)
    {
      apr_socket_close(*sock);
      family = APR_UNSPEC;
    }
#endif

  /* Resolve the hostname. */
  status = FUNC1(&sa, hostname, family, port, 0, pool);
  if (status)
    return FUNC6(status, NULL, FUNC0("Unknown hostname '%s'"),
                             hostname);
  /* Iterate through the returned list of addresses attempting to
   * connect to each in turn. */
  do
    {
      /* Create the socket. */
#ifdef MAX_SECS_TO_LINGER
      /* ### old APR interface */
      status = apr_socket_create(sock, sa->family, SOCK_STREAM, pool);
#else
      status = FUNC4(sock, sa->family, SOCK_STREAM, APR_PROTO_TCP,
                                 pool);
#endif
      if (status == APR_SUCCESS)
        {
          status = FUNC3(*sock, sa);
          if (status != APR_SUCCESS)
            FUNC2(*sock);
        }
      sa = sa->next;
    }
  while (status != APR_SUCCESS && sa);

  if (status)
    return FUNC7(status, FUNC0("Can't connect to host '%s'"),
                              hostname);

  /* Enable TCP keep-alives on the socket so we time out when
   * the connection breaks due to network-layer problems.
   * If the peer has dropped the connection due to a network partition
   * or a crash, or if the peer no longer considers the connection
   * valid because we are behind a NAT and our public IP has changed,
   * it will respond to the keep-alive probe with a RST instead of an
   * acknowledgment segment, which will cause svn to abort the session
   * even while it is currently blocked waiting for data from the peer.
   * See issue #3347. */
  status = FUNC5(*sock, APR_SO_KEEPALIVE, 1);
  if (status)
    {
      /* It's not a fatal error if we cannot enable keep-alives. */
    }

  return SVN_NO_ERROR;
}