#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* parent; } ;
typedef  TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_8__ {TYPE_1__* client_url; } ;
typedef  TYPE_3__ svn_ra_svn__parent_t ;
struct TYPE_9__ {TYPE_2__* priv; } ;
typedef  TYPE_4__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC1(svn_ra_session_t *session,
                                           const char **url,
                                           apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn__parent_t *parent = sess->parent;

  *url = FUNC0(pool, parent->client_url->data,
                        parent->client_url->len);

  return SVN_NO_ERROR;
}