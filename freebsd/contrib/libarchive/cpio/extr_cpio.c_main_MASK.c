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
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
struct cpio {char* buff; int buff_size; int uid_override; int gid_override; char** argv; int argc; char mode; char compress; int bytes_per_block; char* filename; int option_null; int option_append; int option_atime_restore; int add_filter; char* argument; char* format; int option_follow_links; int option_link; int option_numeric_uid_gid; char* passphrase; int quiet; int option_rename; int option_list; int return_value; int /*<<< orphan*/  ppbuff; int /*<<< orphan*/  destdir; int /*<<< orphan*/  uname_cache; int /*<<< orphan*/  gname_cache; int /*<<< orphan*/ * matching; scalar_t__ dot; scalar_t__ verbose; int /*<<< orphan*/  extract_flags; int /*<<< orphan*/ * gname_override; int /*<<< orphan*/ * uname_override; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_EXTRACT_ACL ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_FFLAGS ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_NO_AUTODIR ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_OWNER ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_PERM ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_SECURE_NODOTDOT ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_SECURE_SYMLINKS ; 
 int /*<<< orphan*/  ARCHIVE_EXTRACT_TIME ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  LC_ALL ; 
#define  OPTION_B64ENCODE 141 
#define  OPTION_GRZIP 140 
#define  OPTION_INSECURE 139 
#define  OPTION_LRZIP 138 
#define  OPTION_LZ4 137 
#define  OPTION_LZMA 136 
#define  OPTION_LZOP 135 
#define  OPTION_NO_PRESERVE_OWNER 134 
#define  OPTION_PASSPHRASE 133 
#define  OPTION_PRESERVE_OWNER 132 
#define  OPTION_QUIET 131 
#define  OPTION_UUENCODE 130 
#define  OPTION_VERSION 129 
#define  OPTION_ZSTD 128 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (struct cpio*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct cpio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct cpio*) ; 
 int /*<<< orphan*/  FUNC16 (struct cpio*) ; 
 int /*<<< orphan*/  FUNC17 (struct cpio*) ; 
 int /*<<< orphan*/  FUNC18 (struct cpio*,char*) ; 
 char* FUNC19 (char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 

int
FUNC27(int argc, char *argv[])
{
	static char buff[16384];
	struct cpio _cpio; /* Allocated on stack. */
	struct cpio *cpio;
	const char *errmsg;
	char *tptr;
	int uid, gid;
	int opt, t;

	cpio = &_cpio;
	FUNC14(cpio, 0, sizeof(*cpio));
	cpio->buff = buff;
	cpio->buff_size = sizeof(buff);

#if defined(HAVE_SIGACTION) && defined(SIGPIPE)
	{ /* Ignore SIGPIPE signals. */
		struct sigaction sa;
		sigemptyset(&sa.sa_mask);
		sa.sa_flags = 0;
		sa.sa_handler = SIG_IGN;
		sigaction(SIGPIPE, &sa, NULL);
	}
#endif

	/* Set lafe_progname before calling lafe_warnc. */
	FUNC11(*argv, "bsdcpio");

#if HAVE_SETLOCALE
	if (setlocale(LC_ALL, "") == NULL)
		lafe_warnc(0, "Failed to set default locale");
#endif

	cpio->uid_override = -1;
	cpio->gid_override = -1;
	cpio->argv = argv;
	cpio->argc = argc;
	cpio->mode = '\0';
	cpio->verbose = 0;
	cpio->compress = '\0';
	cpio->extract_flags = ARCHIVE_EXTRACT_NO_AUTODIR;
	cpio->extract_flags |= ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER;
	cpio->extract_flags |= ARCHIVE_EXTRACT_SECURE_SYMLINKS;
	cpio->extract_flags |= ARCHIVE_EXTRACT_SECURE_NODOTDOT;
	cpio->extract_flags |= ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS;
	cpio->extract_flags |= ARCHIVE_EXTRACT_PERM;
	cpio->extract_flags |= ARCHIVE_EXTRACT_FFLAGS;
	cpio->extract_flags |= ARCHIVE_EXTRACT_ACL;
#if !defined(_WIN32) && !defined(__CYGWIN__)
	if (FUNC9() == 0)
		cpio->extract_flags |= ARCHIVE_EXTRACT_OWNER;
#endif
	cpio->bytes_per_block = 512;
	cpio->filename = NULL;

	cpio->matching = FUNC5();
	if (cpio->matching == NULL)
		FUNC10(1, 0, "Out of memory");

	while ((opt = FUNC6(cpio)) != -1) {
		switch (opt) {
		case '0': /* GNU convention: --null, -0 */
			cpio->option_null = 1;
			break;
		case 'A': /* NetBSD/OpenBSD */
			cpio->option_append = 1;
			break;
		case 'a': /* POSIX 1997 */
			cpio->option_atime_restore = 1;
			break;
		case 'B': /* POSIX 1997 */
			cpio->bytes_per_block = 5120;
			break;
		case OPTION_B64ENCODE:
			cpio->add_filter = opt;
			break;
		case 'C': /* NetBSD/OpenBSD */
			errno = 0;
			tptr = NULL;
			t = (int)FUNC24(cpio->argument, &tptr, 10);
			if (errno || t <= 0 || *(cpio->argument) == '\0' ||
			    tptr == NULL || *tptr != '\0') {
				FUNC10(1, 0, "Invalid blocksize: %s",
				    cpio->argument);
			}
			cpio->bytes_per_block = t;
			break;
		case 'c': /* POSIX 1997 */
			cpio->format = "odc";
			break;
		case 'd': /* POSIX 1997 */
			cpio->extract_flags &= ~ARCHIVE_EXTRACT_NO_AUTODIR;
			break;
		case 'E': /* NetBSD/OpenBSD */
			if (FUNC4(
			    cpio->matching, cpio->argument,
			    cpio->option_null) != ARCHIVE_OK)
				FUNC10(1, 0, "Error : %s",
				    FUNC0(cpio->matching));
			break;
		case 'F': /* NetBSD/OpenBSD/GNU cpio */
			cpio->filename = cpio->argument;
			break;
		case 'f': /* POSIX 1997 */
			if (FUNC1(cpio->matching,
			    cpio->argument) != ARCHIVE_OK)
				FUNC10(1, 0, "Error : %s",
				    FUNC0(cpio->matching));
			break;
		case OPTION_GRZIP:
			cpio->compress = opt;
			break;
		case 'H': /* GNU cpio (also --format) */
			cpio->format = cpio->argument;
			break;
		case 'h':
			FUNC13();
			break;
		case 'I': /* NetBSD/OpenBSD */
			cpio->filename = cpio->argument;
			break;
		case 'i': /* POSIX 1997 */
			if (cpio->mode != '\0')
				FUNC10(1, 0,
				    "Cannot use both -i and -%c", cpio->mode);
			cpio->mode = opt;
			break;
		case 'J': /* GNU tar, others */
			cpio->compress = opt;
			break;
		case 'j': /* GNU tar, others */
			cpio->compress = opt;
			break;
		case OPTION_INSECURE:
			cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_SYMLINKS;
			cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_NODOTDOT;
			cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS;
			break;
		case 'L': /* GNU cpio */
			cpio->option_follow_links = 1;
			break;
		case 'l': /* POSIX 1997 */
			cpio->option_link = 1;
			break;
		case OPTION_LRZIP:
		case OPTION_LZ4:
		case OPTION_LZMA: /* GNU tar, others */
		case OPTION_LZOP: /* GNU tar, others */
		case OPTION_ZSTD:
			cpio->compress = opt;
			break;
		case 'm': /* POSIX 1997 */
			cpio->extract_flags |= ARCHIVE_EXTRACT_TIME;
			break;
		case 'n': /* GNU cpio */
			cpio->option_numeric_uid_gid = 1;
			break;
		case OPTION_NO_PRESERVE_OWNER: /* GNU cpio */
			cpio->extract_flags &= ~ARCHIVE_EXTRACT_OWNER;
			break;
		case 'O': /* GNU cpio */
			cpio->filename = cpio->argument;
			break;
		case 'o': /* POSIX 1997 */
			if (cpio->mode != '\0')
				FUNC10(1, 0,
				    "Cannot use both -o and -%c", cpio->mode);
			cpio->mode = opt;
			break;
		case 'p': /* POSIX 1997 */
			if (cpio->mode != '\0')
				FUNC10(1, 0,
				    "Cannot use both -p and -%c", cpio->mode);
			cpio->mode = opt;
			cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_NODOTDOT;
			cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS;
			break;
		case OPTION_PASSPHRASE:
			cpio->passphrase = cpio->argument;
			break;
		case OPTION_PRESERVE_OWNER:
			cpio->extract_flags |= ARCHIVE_EXTRACT_OWNER;
			break;
		case OPTION_QUIET: /* GNU cpio */
			cpio->quiet = 1;
			break;
		case 'R': /* GNU cpio, also --owner */
			/* TODO: owner_parse should return uname/gname
			 * also; use that to set [ug]name_override. */
			errmsg = FUNC19(cpio->argument, &uid, &gid);
			if (errmsg) {
				FUNC12(-1, "%s", errmsg);
				FUNC25();
			}
			if (uid != -1) {
				cpio->uid_override = uid;
				cpio->uname_override = NULL;
			}
			if (gid != -1) {
				cpio->gid_override = gid;
				cpio->gname_override = NULL;
			}
			break;
		case 'r': /* POSIX 1997 */
			cpio->option_rename = 1;
			break;
		case 't': /* POSIX 1997 */
			cpio->option_list = 1;
			break;
		case 'u': /* POSIX 1997 */
			cpio->extract_flags
			    &= ~ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER;
			break;
		case OPTION_UUENCODE:
			cpio->add_filter = opt;
			break;
		case 'v': /* POSIX 1997 */
			cpio->verbose++;
			break;
		case 'V': /* GNU cpio */
			cpio->dot++;
			break;
		case OPTION_VERSION: /* GNU convention */
			FUNC26();
			break;
#if 0
	        /*
		 * cpio_getopt() handles -W specially, so it's not
		 * available here.
		 */
		case 'W': /* Obscure, but useful GNU convention. */
			break;
#endif
		case 'y': /* tar convention */
			cpio->compress = opt;
			break;
		case 'Z': /* tar convention */
			cpio->compress = opt;
			break;
		case 'z': /* tar convention */
			cpio->compress = opt;
			break;
		default:
			FUNC25();
		}
	}

	/*
	 * Sanity-check args, error out on nonsensical combinations.
	 */
	/* -t implies -i if no mode was specified. */
	if (cpio->option_list && cpio->mode == '\0')
		cpio->mode = 'i';
	/* -t requires -i */
	if (cpio->option_list && cpio->mode != 'i')
		FUNC10(1, 0, "Option -t requires -i");
	/* -n requires -it */
	if (cpio->option_numeric_uid_gid && !cpio->option_list)
		FUNC10(1, 0, "Option -n requires -it");
	/* Can only specify format when writing */
	if (cpio->format != NULL && cpio->mode != 'o')
		FUNC10(1, 0, "Option --format requires -o");
	/* -l requires -p */
	if (cpio->option_link && cpio->mode != 'p')
		FUNC10(1, 0, "Option -l requires -p");
	/* -v overrides -V */
	if (cpio->dot && cpio->verbose)
		cpio->dot = 0;
	/* TODO: Flag other nonsensical combinations. */

	switch (cpio->mode) {
	case 'o':
		/* TODO: Implement old binary format in libarchive,
		   use that here. */
		if (cpio->format == NULL)
			cpio->format = "odc"; /* Default format */

		FUNC17(cpio);
		break;
	case 'i':
		while (*cpio->argv != NULL) {
			if (FUNC3(cpio->matching,
			    *cpio->argv) != ARCHIVE_OK)
				FUNC10(1, 0, "Error : %s",
				    FUNC0(cpio->matching));
			--cpio->argc;
			++cpio->argv;
		}
		if (cpio->option_list)
			FUNC16(cpio);
		else
			FUNC15(cpio);
		break;
	case 'p':
		if (*cpio->argv == NULL || **cpio->argv == '\0')
			FUNC10(1, 0,
			    "-p mode requires a target directory");
		FUNC18(cpio, *cpio->argv);
		break;
	default:
		FUNC10(1, 0,
		    "Must specify at least one of -i, -o, or -p");
	}

	FUNC2(cpio->matching);
	FUNC8(cpio->gname_cache);
	FUNC8(cpio->uname_cache);
	FUNC7(cpio->destdir);
	FUNC20(cpio->ppbuff);
	return (cpio->return_value);
}