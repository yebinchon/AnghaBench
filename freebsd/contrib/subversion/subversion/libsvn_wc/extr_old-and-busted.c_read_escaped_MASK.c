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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(char *result, char **buf, const char *end)
{
  apr_uint64_t val;
  char digits[3];

  if (end - *buf < 3 || **buf != 'x' || ! FUNC2((*buf)[1])
      || ! FUNC2((*buf)[2]))
    return FUNC3(SVN_ERR_WC_CORRUPT, NULL,
                            FUNC0("Invalid escape sequence"));
  (*buf)++;
  digits[0] = *((*buf)++);
  digits[1] = *((*buf)++);
  digits[2] = 0;
  if ((val = FUNC1(digits, NULL, 16)) == 0)
    return FUNC3(SVN_ERR_WC_CORRUPT, NULL,
                            FUNC0("Invalid escaped character"));
  *result = (char) val;
  return SVN_NO_ERROR;
}