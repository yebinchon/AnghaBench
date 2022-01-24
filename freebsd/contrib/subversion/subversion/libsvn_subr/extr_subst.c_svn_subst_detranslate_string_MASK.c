#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
struct TYPE_12__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EOL_STR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 TYPE_2__* FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_string_t **new_value,
                             const svn_string_t *value,
                             svn_boolean_t for_output,
                             apr_pool_t *pool)
{
  svn_error_t *err;
  const char *val_neol;
  const char *val_nlocale_neol;

  if (value == NULL)
    {
      *new_value = NULL;
      return SVN_NO_ERROR;
    }

  FUNC1(FUNC6(value->data,
                                       &val_neol,
                                       APR_EOL_STR,  /* 'native' eol */
                                       FALSE, /* no repair */
                                       NULL,  /* no keywords */
                                       FALSE, /* no expansion */
                                       pool));

  if (for_output)
    {
      err = FUNC2(&val_nlocale_neol, val_neol, pool);
      if (err && (FUNC0(err->apr_err)))
        {
          val_nlocale_neol =
            FUNC3(val_neol, pool);
          FUNC4(err);
        }
      else if (err)
        return err;
    }
  else
    {
      err = FUNC7(&val_nlocale_neol, val_neol, pool);
      if (err && (FUNC0(err->apr_err)))
        {
          val_nlocale_neol = FUNC8(val_neol, pool);
          FUNC4(err);
        }
      else if (err)
        return err;
    }

  *new_value = FUNC5(val_nlocale_neol, pool);

  return SVN_NO_ERROR;
}