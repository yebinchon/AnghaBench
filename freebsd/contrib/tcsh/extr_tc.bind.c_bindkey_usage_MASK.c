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

/* Variables and functions */
 char* FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
    FUNC1("%s", FUNC0(20, 12,
	    "Usage: bindkey [options] [--] [KEY [COMMAND]]\n"));
    FUNC1("%s", FUNC0(20, 13,
    	    "    -a   list or bind KEY in alternative key map\n"));
    FUNC1("%s", FUNC0(20, 14,
	    "    -b   interpret KEY as a C-, M-, F- or X- key name\n"));
    FUNC1("%s", FUNC0(20, 15,
            "    -s   interpret COMMAND as a literal string to be output\n"));
    FUNC1("%s", FUNC0(20, 16,
            "    -c   interpret COMMAND as a builtin or external command\n"));
    FUNC1("%s", FUNC0(20, 17,
	    "    -v   bind all keys to vi bindings\n"));
    FUNC1("%s", FUNC0(20, 18,
	    "    -e   bind all keys to emacs bindings\n"));
    FUNC1(FUNC0(20, 19,
	    "    -d   bind all keys to default editor's bindings (%s)\n"),
#ifdef VIDEFAULT
	    "vi"
#else /* EMACSDEFAULT */
	    "emacs"
#endif /* VIDEFAULT */
	    );
    FUNC1("%s", FUNC0(20, 20,
	    "    -l   list editor commands with descriptions\n"));
    FUNC1("%s", FUNC0(20, 21,
	    "    -r   remove KEY's binding\n"));
    FUNC1("%s", FUNC0(20, 22,
	    "    -k   interpret KEY as a symbolic arrow-key name\n"));
    FUNC1("%s", FUNC0(20, 23,
	    "    --   force a break from option processing\n"));
    FUNC1("%s", FUNC0(20, 24,
	    "    -u   (or any invalid option) this message\n"));
    FUNC1("\n");
    FUNC1("%s", FUNC0(20, 25,
	    "Without KEY or COMMAND, prints all bindings\n"));
    FUNC1("%s", FUNC0(20, 26,
	    "Without COMMAND, prints the binding for KEY.\n"));
}