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
struct manconf {int /*<<< orphan*/  manpath; } ;

/* Variables and functions */
 char* MAN_CONF_FILE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct manconf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

void
FUNC5(struct manconf *conf, const char *file,
		char *defp, char *auxp)
{
	char		*insert;

	/* Always prepend -m. */
	FUNC2(&conf->manpath, auxp, 'm');

	/* If -M is given, it overrides everything else. */
	if (NULL != defp) {
		FUNC2(&conf->manpath, defp, 'M');
		return;
	}

	/* MANPATH and man.conf(5) cooperate. */
	defp = FUNC0("MANPATH");
	if (NULL == file)
		file = MAN_CONF_FILE;

	/* No MANPATH; use man.conf(5) only. */
	if (NULL == defp || '\0' == defp[0]) {
		FUNC1(conf, file);
		return;
	}

	/* Prepend man.conf(5) to MANPATH. */
	if (':' == defp[0]) {
		FUNC1(conf, file);
		FUNC2(&conf->manpath, defp, '\0');
		return;
	}

	/* Append man.conf(5) to MANPATH. */
	if (':' == defp[FUNC3(defp) - 1]) {
		FUNC2(&conf->manpath, defp, '\0');
		FUNC1(conf, file);
		return;
	}

	/* Insert man.conf(5) into MANPATH. */
	insert = FUNC4(defp, "::");
	if (NULL != insert) {
		*insert++ = '\0';
		FUNC2(&conf->manpath, defp, '\0');
		FUNC1(conf, file);
		FUNC2(&conf->manpath, insert + 1, '\0');
		return;
	}

	/* MANPATH overrides man.conf(5) completely. */
	FUNC2(&conf->manpath, defp, '\0');
}