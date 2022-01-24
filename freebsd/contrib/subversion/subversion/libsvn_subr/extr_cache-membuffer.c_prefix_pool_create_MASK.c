#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_4__ {int bytes_max; int bytes_used; int /*<<< orphan*/  mutex; scalar_t__ values_used; scalar_t__ values_max; struct TYPE_4__* values; int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ prefix_pool_t ;
typedef  scalar_t__ apr_uint32_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_UINT32_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(prefix_pool_t **prefix_pool,
                   apr_size_t bytes_max,
                   svn_boolean_t mutex_required,
                   apr_pool_t *result_pool)
{
  enum
    {
      /* With 56 byes of overhead under 64 bits, we will probably never get
       * substantially below this.  If we accidentally do, we will simply
       * run out of entries in the VALUES array before running out of
       * allocated memory. */
      ESTIMATED_BYTES_PER_ENTRY = 120
    };

  /* Number of entries we are going to support. */
  apr_size_t capacity = FUNC0(APR_UINT32_MAX,
                            bytes_max / ESTIMATED_BYTES_PER_ENTRY);

  /* Construct the result struct. */
  prefix_pool_t *result = FUNC2(result_pool, sizeof(*result));
  result->map = FUNC3(result_pool);

  result->values = capacity
                 ? FUNC2(result_pool, capacity * sizeof(const char *))
                 : NULL;
  result->values_max = (apr_uint32_t)capacity;
  result->values_used = 0;

  result->bytes_max = bytes_max;
  result->bytes_used = capacity * sizeof(svn_membuf_t);

  FUNC1(FUNC4(&result->mutex, mutex_required, result_pool));

  /* Done. */
  *prefix_pool = result;
  return SVN_NO_ERROR;
}