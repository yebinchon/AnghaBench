#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_10__ {int /*<<< orphan*/  encoding; scalar_t__ message; TYPE_1__* filedata; } ;
typedef  TYPE_3__ svn_cl__opt_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {scalar_t__ len; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_BAD_LOG_MESSAGE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char **comment, svn_client_ctx_t *ctx,
            svn_cl__opt_state_t *opt_state, apr_pool_t *pool)
{
  svn_string_t *comment_string;

  if (opt_state->filedata)
    {
      /* Get it from the -F argument. */
      if (FUNC2(opt_state->filedata->data) < opt_state->filedata->len)
        {
          /* A message containing a zero byte can't be represented as a C
             string. */
          return FUNC3(SVN_ERR_CL_BAD_LOG_MESSAGE, NULL,
                                  FUNC1("Lock comment contains a zero byte"));
        }
      comment_string = FUNC4(opt_state->filedata->data, pool);

    }
  else if (opt_state->message)
    {
      /* Get if from the -m option. */
      comment_string = FUNC4(opt_state->message, pool);
    }
  else
    {
      *comment = NULL;
      return SVN_NO_ERROR;
    }

  /* Translate to UTF8/LF. */
  FUNC0(FUNC5(&comment_string, NULL, NULL,
                                      comment_string, opt_state->encoding,
                                      FALSE, pool, pool));
  *comment = comment_string->data;

  return SVN_NO_ERROR;
}