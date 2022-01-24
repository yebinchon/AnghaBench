#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_dirent_receiver_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_6__ {int /*<<< orphan*/ * (* list ) (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_LIST ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

svn_error_t *
FUNC6(svn_ra_session_t *session,
            const char *path,
            svn_revnum_t revision,
            const apr_array_header_t *patterns,
            svn_depth_t depth,
            apr_uint32_t dirent_fields,
            svn_ra_dirent_receiver_t receiver,
            void *receiver_baton,
            apr_pool_t *scratch_pool)
{
  FUNC1(FUNC5(path));
  if (!session->vtable->list)
    return FUNC3(SVN_ERR_UNSUPPORTED_FEATURE, NULL, NULL);

  FUNC0(FUNC4(session, SVN_RA_CAPABILITY_LIST,
                                        NULL, scratch_pool));

  return session->vtable->list(session, path, revision, patterns, depth,
                               dirent_fields, receiver, receiver_baton,
                               scratch_pool);
}