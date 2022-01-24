#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_len; int /*<<< orphan*/ * sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sname ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_12__ {int handle; } ;
struct TYPE_11__ {int handle; scalar_t__ sz_to_recv; int /*<<< orphan*/  status; } ;
struct TYPE_13__ {TYPE_2__ file; TYPE_1__ usocket; } ;
struct TYPE_14__ {int /*<<< orphan*/  type; TYPE_3__ sources; struct sockaddr_un* name; void* bad; scalar_t__ total; TYPE_5__* ent; int /*<<< orphan*/  magic; } ;
typedef  TYPE_4__ isc_entropysource_t ;
struct TYPE_15__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  nsources; int /*<<< orphan*/  sources; int /*<<< orphan*/  mctx; } ;
typedef  TYPE_5__ isc_entropy_t ;
typedef  void* isc_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  ENTROPY_SOURCETYPE_FILE ; 
 int /*<<< orphan*/  ENTROPY_SOURCETYPE_USOCKET ; 
 void* ISC_FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_NOMEMORY ; 
 scalar_t__ ISC_R_SUCCESS ; 
 void* ISC_TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int PORT_NONBLOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOURCE_MAGIC ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_un*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  isc_usocketsource_connected ; 
 int /*<<< orphan*/  isc_usocketsource_connecting ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*,int) ; 

isc_result_t
FUNC19(isc_entropy_t *ent, const char *fname) {
	int fd;
	struct stat _stat;
	isc_boolean_t is_usocket = ISC_FALSE;
	isc_boolean_t is_connected = ISC_FALSE;
	isc_result_t ret;
	isc_entropysource_t *source;

	FUNC3(FUNC8(ent));
	FUNC3(fname != NULL);

	FUNC2(&ent->lock);

	if (FUNC17(fname, &_stat) < 0) {
		ret = FUNC11(errno);
		goto errout;
	}
	/*
	 * Solaris 2.5.1 does not have support for sockets (S_IFSOCK),
	 * but it does return type S_IFIFO (the OS believes that
	 * the socket is a fifo).  This may be an issue if we tell
	 * the program to look at an actual FIFO as its source of
	 * entropy.
	 */
#if defined(S_ISSOCK)
	if (S_ISSOCK(_stat.st_mode))
		is_usocket = ISC_TRUE;
#endif
#if defined(S_ISFIFO) && defined(sun)
	if (S_ISFIFO(_stat.st_mode))
		is_usocket = ISC_TRUE;
#endif
	if (is_usocket)
		fd = FUNC16(PF_UNIX, SOCK_STREAM, 0);
	else
		fd = FUNC15(fname, O_RDONLY | PORT_NONBLOCK, 0);

	if (fd < 0) {
		ret = FUNC11(errno);
		goto errout;
	}

	ret = FUNC13(fd);
	if (ret != ISC_R_SUCCESS)
		goto closefd;

	if (is_usocket) {
		struct sockaddr_un sname;

		FUNC14(&sname, 0, sizeof(sname));
		sname.sun_family = AF_UNIX;
		FUNC18(sname.sun_path, fname, sizeof(sname.sun_path));
		sname.sun_path[sizeof(sname.sun_path)-1] = '0';
#ifdef ISC_PLATFORM_HAVESALEN
#if !defined(SUN_LEN)
#define SUN_LEN(su) \
	(sizeof(*(su)) - sizeof((su)->sun_path) + strlen((su)->sun_path))
#endif
		sname.sun_len = SUN_LEN(&sname);
#endif

		if (FUNC10(fd, (struct sockaddr *) &sname,
			    sizeof(struct sockaddr_un)) < 0) {
			if (errno != EINPROGRESS) {
				ret = FUNC11(errno);
				goto closefd;
			}
		} else
			is_connected = ISC_TRUE;
	}

	source = FUNC12(ent->mctx, sizeof(isc_entropysource_t));
	if (source == NULL) {
		ret = ISC_R_NOMEMORY;
		goto closefd;
	}

	/*
	 * From here down, no failures can occur.
	 */
	source->magic = SOURCE_MAGIC;
	source->ent = ent;
	source->total = 0;
	source->bad = ISC_FALSE;
	FUNC14(source->name, 0, sizeof(source->name));
	FUNC0(source, link);
	if (is_usocket) {
		source->sources.usocket.handle = fd;
		if (is_connected)
			source->sources.usocket.status =
					isc_usocketsource_connected;
		else
			source->sources.usocket.status =
					isc_usocketsource_connecting;
		source->sources.usocket.sz_to_recv = 0;
		source->type = ENTROPY_SOURCETYPE_USOCKET;
	} else {
		source->sources.file.handle = fd;
		source->type = ENTROPY_SOURCETYPE_FILE;
	}

	/*
	 * Hook it into the entropy system.
	 */
	FUNC1(ent->sources, source, link);
	ent->nsources++;

	FUNC7(&ent->lock);
	return (ISC_R_SUCCESS);

 closefd:
	(void)FUNC9(fd);

 errout:
	FUNC7(&ent->lock);

	return (ret);
}