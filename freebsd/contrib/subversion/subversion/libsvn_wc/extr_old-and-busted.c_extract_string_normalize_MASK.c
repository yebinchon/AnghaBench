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
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static const char *
FUNC2(apr_hash_t *atts,
                         const char *att_name,
                         apr_pool_t *result_pool)
{
  const char *value = FUNC1(atts, att_name);

  if (value == NULL)
    return NULL;

  if (*value == '\0')
    return NULL;

  return FUNC0(result_pool, value);
}