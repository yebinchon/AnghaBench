#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ rev_props; void* prop_name; void* path_prefix; void* url; scalar_t__ merge_range; void* changelist_name; scalar_t__ err; scalar_t__ lock; void* mime_type; void* path; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  err_cleanup ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_wc_notify_t *
FUNC7(const svn_wc_notify_t *notify,
                  apr_pool_t *pool)
{
  svn_wc_notify_t *ret = FUNC0(pool, sizeof(*ret));

  *ret = *notify;

  if (ret->path)
    ret->path = FUNC2(pool, ret->path);
  if (ret->mime_type)
    ret->mime_type = FUNC2(pool, ret->mime_type);
  if (ret->lock)
    ret->lock = FUNC4(ret->lock, pool);
  if (ret->err)
    {
      ret->err = FUNC3(ret->err);
      FUNC1(pool, ret->err, err_cleanup,
                                apr_pool_cleanup_null);
    }
  if (ret->changelist_name)
    ret->changelist_name = FUNC2(pool, ret->changelist_name);
  if (ret->merge_range)
    ret->merge_range = FUNC5(ret->merge_range, pool);
  if (ret->url)
    ret->url = FUNC2(pool, ret->url);
  if (ret->path_prefix)
    ret->path_prefix = FUNC2(pool, ret->path_prefix);
  if (ret->prop_name)
    ret->prop_name = FUNC2(pool, ret->prop_name);
  if (ret->rev_props)
    ret->rev_props = FUNC6(ret->rev_props, pool);

  return ret;
}