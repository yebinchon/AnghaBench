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
struct svn_config_t {int dummy; } ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 char* SVN_CLIENT_EDITOR ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_EDITOR_CMD ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_HELPERS ; 
 int /*<<< orphan*/  SVN_ERR_CL_NO_EXTERNAL_EDITOR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct svn_config_t*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct svn_config_t* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char **editor,
                   const char *editor_cmd,
                   apr_hash_t *config)
{
  const char *e;
  struct svn_config_t *cfg;

  /* Use the editor specified on the command line via --editor-cmd, if any. */
  e = editor_cmd;

  /* Otherwise look for the Subversion-specific environment variable. */
  if (! e)
    e = FUNC1("SVN_EDITOR");

  /* If not found then fall back on the config file. */
  if (! e)
    {
      cfg = config ? FUNC5(config, SVN_CONFIG_CATEGORY_CONFIG) : NULL;
      FUNC2(cfg, &e, SVN_CONFIG_SECTION_HELPERS,
                     SVN_CONFIG_OPTION_EDITOR_CMD, NULL);
    }

  /* If not found yet then try general purpose environment variables. */
  if (! e)
    e = FUNC1("VISUAL");
  if (! e)
    e = FUNC1("EDITOR");

#ifdef SVN_CLIENT_EDITOR
  /* If still not found then fall back on the hard-coded default. */
  if (! e)
    e = SVN_CLIENT_EDITOR;
#endif

  /* Error if there is no editor specified */
  if (e)
    {
      const char *c;

      for (c = e; *c; c++)
        if (!FUNC3(*c))
          break;

      if (! *c)
        return FUNC4
          (SVN_ERR_CL_NO_EXTERNAL_EDITOR, NULL,
           FUNC0("The EDITOR, SVN_EDITOR or VISUAL environment variable or "
             "'editor-cmd' run-time configuration option is empty or "
             "consists solely of whitespace. Expected a shell command."));
    }
  else
    return FUNC4
      (SVN_ERR_CL_NO_EXTERNAL_EDITOR, NULL,
       FUNC0("None of the environment variables SVN_EDITOR, VISUAL or EDITOR are "
         "set, and no 'editor-cmd' run-time configuration option was found"));

  *editor = e;
  return SVN_NO_ERROR;
}