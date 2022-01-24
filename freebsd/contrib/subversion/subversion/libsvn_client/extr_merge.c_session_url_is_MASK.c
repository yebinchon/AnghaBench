#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_boolean_t
FUNC3(svn_ra_session_t *ra_session,
               const char *url,
               apr_pool_t *scratch_pool)
{
  const char *session_url;
  svn_error_t *err
    = FUNC2(ra_session, &session_url, scratch_pool);

  FUNC0(! err);
  return FUNC1(url, session_url) == 0;
}