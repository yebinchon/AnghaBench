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
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 int SVN_INT64_BUFFER_SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char,char*) ; 

char *
FUNC2(apr_int64_t number, char separator, apr_pool_t *pool)
{
  char buffer[2 * SVN_INT64_BUFFER_SIZE];
  if (number < 0)
    {
      buffer[0] = '-';
      FUNC1((apr_uint64_t)(-number), separator, &buffer[1]);
    }
  else
    FUNC1((apr_uint64_t)(number), separator, buffer);

  return FUNC0(pool, buffer);
}