#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* (* svn_iter_apr_array_cb_t ) (void*,void*,int /*<<< orphan*/ *) ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {int nelts; int elt_size; void* elts; } ;
typedef  TYPE_3__ apr_array_header_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_ITER_BREAK ; 
 TYPE_1__* SVN_NO_ERROR ; 
 TYPE_1__ internal_break_error ; 
 TYPE_1__* FUNC0 (void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_boolean_t *completed,
                   const apr_array_header_t *array,
                   svn_iter_apr_array_cb_t func,
                   void *baton,
                   apr_pool_t *pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  apr_pool_t *iterpool = FUNC3(pool);
  int i;

  for (i = 0; (! err) && i < array->nelts; ++i)
    {
      void *item = array->elts + array->elt_size*i;

      FUNC2(iterpool);

      err = (*func)(baton, item, iterpool);
    }

  if (completed)
    *completed = ! err;

  if (err && err->apr_err == SVN_ERR_ITER_BREAK)
    {
      if (err != &internal_break_error)
        /* Errors - except those created by svn_iter_break() -
           need to be cleared when not further propagated. */
        FUNC1(err);

      err = SVN_NO_ERROR;
    }

  /* Clear iterpool, because callers may clear the error but have no way
     to clear the iterpool with potentially lots of allocated memory */
  FUNC4(iterpool);

  return err;
}