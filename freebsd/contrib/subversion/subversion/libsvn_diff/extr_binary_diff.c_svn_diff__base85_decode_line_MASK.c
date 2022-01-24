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
typedef  int apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_DIFF_UNEXPECTED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char const) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC4(char *output_data,
                             apr_ssize_t output_len,
                             const char *base85_data,
                             apr_ssize_t base85_len,
                             apr_pool_t *scratch_pool)
{
  {
    apr_ssize_t expected_data = (output_len + 3) / 4 * 5;

    if (base85_len != expected_data)
      return FUNC3(SVN_ERR_DIFF_UNEXPECTED_DATA, NULL,
                              FUNC1("Unexpected base85 line length"));
  }

  while (base85_len)
    {
      unsigned info = 0;
      apr_ssize_t i, n;

      for (i = 0; i < 5; i++)
        {
          int value;

          FUNC0(FUNC2(&value, base85_data[i]));
          info *= 85;
          info += value;
        }

      for (i = 0, n=24; i < 4; i++, n-=8)
        {
          if (i < output_len)
            output_data[i] = (info >> n) & 0xFF;
        }

      base85_data += 5;
      base85_len -= 5;
      output_data += 4;
      output_len -= 4;
    }

  return SVN_NO_ERROR;
}