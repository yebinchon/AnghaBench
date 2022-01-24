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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct propname_filter_baton_t {int /*<<< orphan*/  receiver_baton; int /*<<< orphan*/  (* receiver_func ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  propname; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton,
                         const char *local_abspath,
                         apr_hash_t *props,
                         apr_pool_t *scratch_pool)
{
  struct propname_filter_baton_t *pfb = baton;
  const svn_string_t *propval = FUNC3(props, pfb->propname);

  if (propval)
    {
      props = FUNC1(scratch_pool);
      FUNC4(props, pfb->propname, propval);

      FUNC0(pfb->receiver_func(pfb->receiver_baton, local_abspath, props,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}