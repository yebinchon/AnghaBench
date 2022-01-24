#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(serf_bucket_t **body_bkt,
                     void *baton,
                     serf_bucket_alloc_t *alloc,
                     apr_pool_t *pool /* request pool */,
                     apr_pool_t *scratch_pool)
{
  apr_hash_t *revprops = baton;
  svn_skel_t *request_skel;
  svn_stringbuf_t *skel_str;

  request_skel = FUNC2(pool);
  if (revprops)
    {
      svn_skel_t *proplist_skel;

      FUNC1(FUNC6(&proplist_skel, revprops, pool));
      FUNC3(proplist_skel, request_skel);
      FUNC4("create-txn-with-props", request_skel, pool);
      skel_str = FUNC5(request_skel, pool);
      *body_bkt = FUNC0(skel_str->data, alloc);
    }
  else
    {
      *body_bkt = FUNC0("( create-txn )", alloc);
    }

  return SVN_NO_ERROR;
}