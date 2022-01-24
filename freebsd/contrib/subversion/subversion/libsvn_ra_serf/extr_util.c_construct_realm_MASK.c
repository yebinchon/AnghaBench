#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hostname; int /*<<< orphan*/  scheme; int /*<<< orphan*/  port; scalar_t__ port_str; } ;
struct TYPE_5__ {TYPE_1__ session_url; } ;
typedef  TYPE_2__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  apr_port_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC2(svn_ra_serf__session_t *session,
                apr_pool_t *pool)
{
  const char *realm;
  apr_port_t port;

  if (session->session_url.port_str)
    {
      port = session->session_url.port;
    }
  else
    {
      port = FUNC1(session->session_url.scheme);
    }

  realm = FUNC0(pool, "%s://%s:%d",
                       session->session_url.scheme,
                       session->session_url.hostname,
                       port);

  return realm;
}