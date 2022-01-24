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
struct g_gate_ctl_io {size_t gctl_length; int gctl_error; int gctl_cmd; int /*<<< orphan*/  gctl_offset; int /*<<< orphan*/ * gctl_data; int /*<<< orphan*/  gctl_unit; int /*<<< orphan*/  gctl_version; } ;

/* Variables and functions */
#define  BIO_DELETE 133 
#define  BIO_READ 132 
#define  BIO_WRITE 131 
#define  ECANCELED 130 
#define  ENOMEM 129 
#define  ENXIO 128 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  G_GATE_CMD_DONE ; 
 int /*<<< orphan*/  G_GATE_CMD_START ; 
 int /*<<< orphan*/  G_GATE_CTL_NAME ; 
 int /*<<< orphan*/  G_GATE_VERSION ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct g_gate_ctl_io*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ g_gate_verbose ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (size_t) ; 
 int FUNC13 (int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ *,size_t) ; 
 size_t sectorsize ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  unit ; 

__attribute__((used)) static void
FUNC17(int fd)
{
	struct g_gate_ctl_io ggio;
	size_t bsize;

	if (g_gate_verbose == 0) {
		if (FUNC2(0, 0) == -1) {
			FUNC7(unit, 1);
			FUNC3(EXIT_FAILURE, "Cannot daemonize");
		}
	}
	FUNC9(LOG_DEBUG, "Worker created: %u.", FUNC11());
	ggio.gctl_version = G_GATE_VERSION;
	ggio.gctl_unit = unit;
	bsize = sectorsize;
	ggio.gctl_data = FUNC12(bsize);
	for (;;) {
		int error;
once_again:
		ggio.gctl_length = bsize;
		ggio.gctl_error = 0;
		FUNC8(G_GATE_CMD_START, &ggio);
		error = ggio.gctl_error;
		switch (error) {
		case 0:
			break;
		case ECANCELED:
			/* Exit gracefully. */
			FUNC5(ggio.gctl_data);
			FUNC6();
			FUNC1(fd);
			FUNC4(EXIT_SUCCESS);
		case ENOMEM:
			/* Buffer too small. */
			FUNC0(ggio.gctl_cmd == BIO_DELETE ||
			    ggio.gctl_cmd == BIO_WRITE);
			ggio.gctl_data = FUNC15(ggio.gctl_data,
			    ggio.gctl_length);
			if (ggio.gctl_data != NULL) {
				bsize = ggio.gctl_length;
				goto once_again;
			}
			/* FALLTHROUGH */
		case ENXIO:
		default:
			FUNC10("ioctl(/dev/%s): %s.", G_GATE_CTL_NAME,
			    FUNC16(error));
		}

		error = 0;
		switch (ggio.gctl_cmd) {
		case BIO_READ:
			if ((size_t)ggio.gctl_length > bsize) {
				ggio.gctl_data = FUNC15(ggio.gctl_data,
				    ggio.gctl_length);
				if (ggio.gctl_data != NULL)
					bsize = ggio.gctl_length;
				else
					error = ENOMEM;
			}
			if (error == 0) {
				if (FUNC13(fd, ggio.gctl_data, ggio.gctl_length,
				    ggio.gctl_offset) == -1) {
					error = errno;
				}
			}
			break;
		case BIO_DELETE:
		case BIO_WRITE:
			if (FUNC14(fd, ggio.gctl_data, ggio.gctl_length,
			    ggio.gctl_offset) == -1) {
				error = errno;
			}
			break;
		default:
			error = EOPNOTSUPP;
		}

		ggio.gctl_error = error;
		FUNC8(G_GATE_CMD_DONE, &ggio);
	}
}