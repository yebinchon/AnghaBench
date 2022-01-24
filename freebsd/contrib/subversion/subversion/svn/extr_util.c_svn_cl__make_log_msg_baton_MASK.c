#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
struct TYPE_5__ {int /*<<< orphan*/  non_interactive; int /*<<< orphan*/  no_unlock; int /*<<< orphan*/ * encoding; int /*<<< orphan*/  editor_cmd; int /*<<< orphan*/  message; TYPE_1__* filedata; } ;
typedef  TYPE_2__ svn_cl__opt_state_t ;
struct log_msg_baton {char const* base_dir; int /*<<< orphan*/ * pool; int /*<<< orphan*/  non_interactive; int /*<<< orphan*/  keep_locks; int /*<<< orphan*/ * config; int /*<<< orphan*/ * tmpfile_left; int /*<<< orphan*/ * message_encoding; int /*<<< orphan*/  editor_cmd; int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_LOG_ENCODING ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_MISCELLANY ; 
 int /*<<< orphan*/  SVN_ERR_CL_BAD_LOG_MESSAGE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct log_msg_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC6(void **baton,
                           svn_cl__opt_state_t *opt_state,
                           const char *base_dir /* UTF-8! */,
                           apr_hash_t *config,
                           apr_pool_t *pool)
{
  struct log_msg_baton *lmb = FUNC1(pool, sizeof(*lmb));

  if (opt_state->filedata)
    {
      if (FUNC2(opt_state->filedata->data) < opt_state->filedata->len)
        {
          /* The data contains a zero byte, and therefore can't be
             represented as a C string.  Punt now; it's probably not
             a deliberate encoding, and even if it is, we still
             can't handle it. */
          return FUNC4(SVN_ERR_CL_BAD_LOG_MESSAGE, NULL,
                                  FUNC0("Log message contains a zero byte"));
        }
      lmb->message = opt_state->filedata->data;
    }
  else
    {
      lmb->message = opt_state->message;
    }

  lmb->editor_cmd = opt_state->editor_cmd;
  if (opt_state->encoding)
    {
      lmb->message_encoding = opt_state->encoding;
    }
  else if (config)
    {
      svn_config_t *cfg = FUNC5(config, SVN_CONFIG_CATEGORY_CONFIG);
      FUNC3(cfg, &(lmb->message_encoding),
                     SVN_CONFIG_SECTION_MISCELLANY,
                     SVN_CONFIG_OPTION_LOG_ENCODING,
                     NULL);
    }
  else
    lmb->message_encoding = NULL;

  lmb->base_dir = base_dir;
  lmb->tmpfile_left = NULL;
  lmb->config = config;
  lmb->keep_locks = opt_state->no_unlock;
  lmb->non_interactive = opt_state->non_interactive;
  lmb->pool = pool;
  *baton = lmb;
  return SVN_NO_ERROR;
}