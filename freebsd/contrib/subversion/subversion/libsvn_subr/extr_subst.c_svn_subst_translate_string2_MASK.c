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
struct TYPE_5__ {char* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 TYPE_1__* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int*,char const*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_string_t **new_value,
                            svn_boolean_t *translated_to_utf8,
                            svn_boolean_t *translated_line_endings,
                            const svn_string_t *value,
                            const char *encoding,
                            svn_boolean_t repair,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  const char *val_utf8;
  const char *val_utf8_lf;

  if (value == NULL)
    {
      *new_value = NULL;
      return SVN_NO_ERROR;
    }

  if (encoding && !FUNC1(encoding, "UTF-8"))
    {
      val_utf8 = value->data;
    }
  else if (encoding)
    {
      FUNC0(FUNC4(&val_utf8, value->data,
                                          encoding, scratch_pool));
    }
  else
    {
      FUNC0(FUNC3(&val_utf8, value->data, scratch_pool));
    }

  if (translated_to_utf8)
    *translated_to_utf8 = (FUNC1(value->data, val_utf8) != 0);

  FUNC0(FUNC5(&val_utf8_lf,
                            translated_line_endings,
                            val_utf8,
                            "\n",  /* translate to LF */
                            repair,
                            NULL,  /* no keywords */
                            FALSE, /* no expansion */
                            scratch_pool));

  *new_value = FUNC2(val_utf8_lf, result_pool);
  return SVN_NO_ERROR;
}