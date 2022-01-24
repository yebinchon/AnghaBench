#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* parent; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_8__ {int /*<<< orphan*/  path; TYPE_4__* client_url; int /*<<< orphan*/  server_url; } ;
typedef  TYPE_2__ svn_ra_svn__parent_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef  TYPE_3__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_ra_session_t *ra_session,
                           apr_pool_t *scratch_pool)
{
  svn_ra_svn__session_baton_t *sess = ra_session->priv;
  svn_ra_svn__parent_t *parent = sess->parent;

  /* During e.g. a checkout operation, many requests will be sent for the
     same URL that was used to create the session.  So, both sides are
     often already in sync. */
  if (FUNC2(parent->client_url, parent->server_url))
    return SVN_NO_ERROR;

  /* Actually reparent the server to the session URL. */
  FUNC0(FUNC1(ra_session, parent->client_url->data,
                          scratch_pool));
  FUNC3(parent->path);

  return SVN_NO_ERROR;
}