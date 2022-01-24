#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct baton_apr {int /*<<< orphan*/  pool; int /*<<< orphan*/  file; } ;
typedef  int apr_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton, char *buffer, apr_size_t *len)
{
  struct baton_apr *btn = baton;
  svn_error_t *err;
  svn_boolean_t eof;

  if (*len == 1)
    {
      err = FUNC3(buffer, btn->file, btn->pool);
      if (err)
        {
          *len = 0;
          if (FUNC0(err->apr_err))
            {
              FUNC1(err);
              err = SVN_NO_ERROR;
            }
        }
    }
  else
    err = FUNC4(btn->file, buffer, *len, len,
                                 &eof, btn->pool);

  return FUNC2(err);
}