#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* str; int /*<<< orphan*/  boolean; } ;
struct TYPE_4__ {TYPE_1__ value; } ;

/* Variables and functions */
 char* DIALOGRC ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENV_DIALOGRC ; 
 int /*<<< orphan*/  ENV_HOME ; 
 int /*<<< orphan*/  FIGPAR_BREAK_ON_EQUALS ; 
 int PATH_MAX ; 
 int STR_BUFSIZE ; 
 int /*<<< orphan*/  dialogrc_config ; 
 TYPE_2__* FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 char* gauge_color ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 size_t FUNC4 (char*) ; 
 int /*<<< orphan*/  use_colors ; 
 int /*<<< orphan*/  use_shadow ; 

int
FUNC5(void)
{
	char *cp;
	int res;
	size_t len;
	char path[PATH_MAX];

	/* Allow $DIALOGRC to override `$HOME/.dialogrc' default */
	if ((cp = FUNC1(ENV_DIALOGRC)) != NULL && *cp != '\0')
		FUNC3(path, PATH_MAX, "%s", cp);
	else if ((cp = FUNC1(ENV_HOME)) != NULL) {
		/* Copy $HOME into buffer and append trailing `/' if missing */
		FUNC3(path, PATH_MAX, "%s", cp);
		len = FUNC4(path);
		cp = path + len;
		if (len > 0 && len < (PATH_MAX - 1) && *(cp - 1) != '/') {
			*cp++ = '/';
			*cp = '\0';
			len++;
		}

		/* If we still have room, shove in the name of rc file */
		if (len < (PATH_MAX - 1))
			FUNC3(cp, PATH_MAX - len, "%s", DIALOGRC);
	} else {
		/* Like dialog(1), don't process a file if $HOME is unset */
		errno = ENOENT;
		return (-1);
	}

	/* Process file (either $DIALOGRC if set, or `$HOME/.dialogrc') */
	res = FUNC2(dialogrc_config,
		path, NULL, FIGPAR_BREAK_ON_EQUALS);

	/* Set some globals based on what we parsed */
	use_shadow = FUNC0("use_shadow")->value.boolean;
	use_colors = FUNC0("use_colors")->value.boolean;
	FUNC3(gauge_color, STR_BUFSIZE, "%s",
	    FUNC0("gauge_color")->value.str);

	return (res);
}