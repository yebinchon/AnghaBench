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
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_3__ {int /*<<< orphan*/ * value; void const* name; } ;
typedef  TYPE_1__ svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 void* FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(apr_array_header_t **propdiffs,
               const apr_hash_t *target_props,
               const apr_hash_t *source_props,
               apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_array_header_t *ary = FUNC0(pool, 1, sizeof(svn_prop_t));

  /* Note: we will be storing the pointers to the keys (from the hashes)
     into the propdiffs array.  It is acceptable for us to
     reference the same memory as the base/target_props hash. */

  /* Loop over SOURCE_PROPS and examine each key.  This will allow us to
     detect any `deletion' events or `set-modification' events.  */
  for (hi = FUNC2(pool, (apr_hash_t *)source_props); hi;
       hi = FUNC4(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *val;
      const svn_string_t *propval1, *propval2;

      /* Get next property */
      FUNC5(hi, &key, &klen, &val);
      propval1 = val;

      /* Does property name exist in TARGET_PROPS? */
      propval2 = FUNC3((apr_hash_t *)target_props, key, klen);

      if (propval2 == NULL)
        {
          /* Add a delete event to the array */
          svn_prop_t *p = FUNC1(ary);
          p->name = key;
          p->value = NULL;
        }
      else if (! FUNC6(propval1, propval2))
        {
          /* Add a set (modification) event to the array */
          svn_prop_t *p = FUNC1(ary);
          p->name = key;
          p->value = FUNC7(propval2, pool);
        }
    }

  /* Loop over TARGET_PROPS and examine each key.  This allows us to
     detect `set-creation' events */
  for (hi = FUNC2(pool, (apr_hash_t *)target_props); hi;
       hi = FUNC4(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *val;
      const svn_string_t *propval;

      /* Get next property */
      FUNC5(hi, &key, &klen, &val);
      propval = val;

      /* Does property name exist in SOURCE_PROPS? */
      if (NULL == FUNC3((apr_hash_t *)source_props, key, klen))
        {
          /* Add a set (creation) event to the array */
          svn_prop_t *p = FUNC1(ary);
          p->name = key;
          p->value = FUNC7(propval, pool);
        }
    }

  /* Done building our array of user events. */
  *propdiffs = ary;

  return SVN_NO_ERROR;
}