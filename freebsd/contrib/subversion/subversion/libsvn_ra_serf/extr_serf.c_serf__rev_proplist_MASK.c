#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  TYPE_1__ svn_ra_session_t ;
struct TYPE_8__ {int /*<<< orphan*/  rev_stub; } ;
typedef  TYPE_2__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__dav_props_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,TYPE_2__*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_ra_serf__deliver_svn_props ; 
 int /*<<< orphan*/  FUNC6 (char const**,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_ra_session_t *ra_session,
                   svn_revnum_t rev,
                   const svn_ra_serf__dav_props_t *fetch_props,
                   apr_hash_t **ret_props,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_hash_t *props;
  const char *propfind_path;
  svn_ra_serf__handler_t *handler;

  if (FUNC1(session))
    {
      propfind_path = FUNC3(scratch_pool, "%s/%ld", session->rev_stub,
                                   rev);

      /* svn_ra_serf__retrieve_props() wants to added the revision as
         a Label to the PROPFIND, which isn't really necessary when
         querying a rev-stub URI.  *Shrug*  Probably okay to leave the
         Label, but whatever. */
      rev = SVN_INVALID_REVNUM;
    }
  else
    {
      /* Use the VCC as the propfind target path. */
      FUNC0(FUNC6(&propfind_path, session,
                                        scratch_pool));
    }

  props = FUNC2(result_pool);
  FUNC0(FUNC5(&handler, session,
                                               propfind_path, rev, "0",
                                               fetch_props,
                                               svn_ra_serf__deliver_svn_props,
                                               props,
                                               scratch_pool));

  FUNC0(FUNC4(handler, scratch_pool));

  FUNC7(props, scratch_pool);

  *ret_props = props;

  return SVN_NO_ERROR;
}