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
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

const char*
FUNC4(apr_int64_t number,
                                    const char *string,
                                    apr_pool_t *result_pool)
{
  apr_size_t len = FUNC3(string);

  /* number part requires max. 10x7 bits + 1 space.
   * Add another 1 for the terminal 0 */
  char *key_buffer = FUNC0(result_pool, len + 12);
  const char *key = key_buffer;

  /* Prepend the number to the string and separate them by space. No other
   * number can result in the same prefix, no other string in the same
   * postfix nor can the boundary between them be ambiguous. */
  key_buffer = FUNC1(number, key_buffer);
  *++key_buffer = ' ';
  FUNC2(++key_buffer, string, len+1);

  /* return the start of the key */
  return key;
}