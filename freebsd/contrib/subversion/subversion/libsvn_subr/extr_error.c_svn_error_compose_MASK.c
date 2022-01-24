#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* child; int /*<<< orphan*/ * pool; void* file; void* message; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  err_abort ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(svn_error_t *chain, svn_error_t *new_err)
{
  apr_pool_t *pool = chain->pool;
  apr_pool_t *oldpool = new_err->pool;

  while (chain->child)
    chain = chain->child;

#if defined(SVN_DEBUG)
  /* Kill existing handler since the end of the chain is going to change */
  apr_pool_cleanup_kill(pool, chain, err_abort);
#endif

  /* Copy the new error chain into the old chain's pool. */
  while (new_err)
    {
      chain->child = FUNC0(pool, sizeof(*chain->child));
      chain = chain->child;
      *chain = *new_err;
      if (chain->message)
        chain->message = FUNC3(pool, new_err->message);
      if (chain->file)
        chain->file = FUNC3(pool, new_err->file);
      chain->pool = pool;
#if defined(SVN_DEBUG)
      if (! new_err->child)
        apr_pool_cleanup_kill(oldpool, new_err, err_abort);
#endif
      new_err = new_err->child;
    }

#if defined(SVN_DEBUG)
  apr_pool_cleanup_register(pool, chain,
                            err_abort,
                            apr_pool_cleanup_null);
#endif

  /* Destroy the new error chain. */
  FUNC4(oldpool);
}