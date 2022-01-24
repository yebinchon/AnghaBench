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
struct sendlist {int narg; char* name; int /*<<< orphan*/  what; scalar_t__ (* handler ) (char*,char*) ;scalar_t__ needconnect; scalar_t__ nbyte; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 struct sendlist* FUNC1 (char*) ; 
 int /*<<< orphan*/  IAC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  connected ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10(int argc, char *argv[])
{
    int count;		/* how many bytes we are going to need to send */
    int i;
    struct sendlist *s;	/* pointer to current command */
    int success = 0;
    int needconnect = 0;

    if (argc < 2) {
	FUNC5("need at least one argument for 'send' command\n");
	FUNC5("'send ?' for help\n");
	return 0;
    }
    /*
     * First, validate all the send arguments.
     * In addition, we see how much space we are going to need, and
     * whether or not we will be doing a "SYNCH" operation (which
     * flushes the network queue).
     */
    count = 0;
    for (i = 1; i < argc; i++) {
	s = FUNC1(argv[i]);
	if (s == 0) {
	    FUNC5("Unknown send argument '%s'\n'send ?' for help.\n",
			argv[i]);
	    return 0;
	} else if (FUNC0((void *)s)) {
	    FUNC5("Ambiguous send argument '%s'\n'send ?' for help.\n",
			argv[i]);
	    return 0;
	}
	if (i + s->narg >= argc) {
	    FUNC4(stderr,
	    "Need %d argument%s to 'send %s' command.  'send %s ?' for help.\n",
		s->narg, s->narg == 1 ? "" : "s", s->name, s->name);
	    return 0;
	}
	count += s->nbyte;
	if ((void *)s->handler == (void *)send_help) {
	    FUNC8();
	    return 0;
	}

	i += s->narg;
	needconnect += s->needconnect;
    }
    if (!connected && needconnect) {
	FUNC5("?Need to be connected first.\n");
	FUNC5("'send ?' for help\n");
	return 0;
    }
    /* Now, do we have enough room? */
    if (FUNC3() < count) {
	FUNC5("There is not enough room in the buffer TO the network\n");
	FUNC5("to process your request.  Nothing will be done.\n");
	FUNC5("('send synch' will throw away most data in the network\n");
	FUNC5("buffer, if this might help.)\n");
	return 0;
    }
    /* OK, they are all OK, now go through again and actually send */
    count = 0;
    for (i = 1; i < argc; i++) {
	if ((s = FUNC1(argv[i])) == 0) {
	    FUNC4(stderr, "Telnet 'send' error - argument disappeared!\n");
	    FUNC7();
	    /*NOTREACHED*/
	}
	if (s->handler) {
	    count++;
	    success += (*s->handler)((s->narg > 0) ? argv[i+1] : 0,
				  (s->narg > 1) ? argv[i+2] : 0);
	    i += s->narg;
	} else {
	    FUNC2(IAC, s->what);
	    FUNC6("SENT", IAC, s->what);
	}
    }
    return (count == success);
}