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
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {scalar_t__ ident; int fflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_VNODE ; 
 int EV_ADD ; 
 int EV_ENABLE ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int NOTE_ATTRIB ; 
 int NOTE_DELETE ; 
 int NOTE_EXTEND ; 
 int NOTE_LINK ; 
 int NOTE_RENAME ; 
 int NOTE_REVOKE ; 
 int NOTE_WRITE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct kevent*) ; 
 int FUNC7 (int,struct kevent*,int,struct kevent*,int,struct timespec*) ; 
 int FUNC8 () ; 
 struct kevent* FUNC9 (int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC12 (char*) ; 

int
FUNC13(int argc, char **argv)
{
	char *line;
	int i, kq;
	size_t len;
	struct kevent *changes, event;

	if (argc < 2)
		return EXIT_FAILURE;

	argc--;
	argv++;

	changes = FUNC9(sizeof(struct kevent) * argc);
	if (changes == NULL)
		FUNC4(EXIT_FAILURE, "not enough memory");

	for (i = 0; i < argc; i++) {
		int fd;

		fd = FUNC10(argv[i], O_RDONLY);
		if (fd == -1)
			FUNC3(EXIT_FAILURE, "cannot open %s", argv[i]);

		FUNC0(&changes[i], fd, EVFILT_VNODE,
		    EV_ADD | EV_ENABLE | EV_ONESHOT,
		    NOTE_ATTRIB | NOTE_DELETE | NOTE_EXTEND | NOTE_LINK |
		    NOTE_RENAME | NOTE_REVOKE | NOTE_WRITE,
		    0, 0);
	}

	kq = FUNC8();
	if (kq == -1)
		FUNC3(EXIT_FAILURE, "kqueue");

	while ((line = FUNC5(stdin, &len)) != NULL) {
		int ec, nev;
		struct timespec to;

		to.tv_sec = 0;
		to.tv_nsec = 100000;

		(void)FUNC7(kq, changes, argc, &event, 1, &to);

		FUNC1(len > 0);
		FUNC1(line[len - 1] == '\n');
		line[len - 1] = '\0';
		ec = FUNC12(line);
		if (ec != EXIT_SUCCESS)
			FUNC4(ec, "%s returned %d", line, ec);

		do {
			nev = FUNC7(kq, changes, argc, &event, 1, &to);
			if (nev == -1)
				FUNC3(EXIT_FAILURE, "kevent");
			else if (nev > 0) {
				for (i = 0; i < argc; i++)
					if (event.ident == changes[i].ident)
						break;

				if (event.fflags & NOTE_ATTRIB)
					FUNC11("%s - NOTE_ATTRIB\n", argv[i]);
				if (event.fflags & NOTE_DELETE)
					FUNC11("%s - NOTE_DELETE\n", argv[i]);
				if (event.fflags & NOTE_EXTEND)
					FUNC11("%s - NOTE_EXTEND\n", argv[i]);
				if (event.fflags & NOTE_LINK)
					FUNC11("%s - NOTE_LINK\n", argv[i]);
				if (event.fflags & NOTE_RENAME)
					FUNC11("%s - NOTE_RENAME\n", argv[i]);
				if (event.fflags & NOTE_REVOKE)
					FUNC11("%s - NOTE_REVOKE\n", argv[i]);
				if (event.fflags & NOTE_WRITE)
					FUNC11("%s - NOTE_WRITE\n", argv[i]);
			}
		} while (nev > 0);
	}

	for (i = 0; i < argc; i++)
		FUNC2(changes[i].ident);
	FUNC6(changes);

	return EXIT_SUCCESS;
}