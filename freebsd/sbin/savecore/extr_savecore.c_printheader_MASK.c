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
typedef  int /*<<< orphan*/  xo_handle_t ;
typedef  void* uint64_t ;
typedef  void* time_t ;
struct kerneldumpheader {char const* architecture; int compression; char const* hostname; char const* magic; char const* versionstring; char const* panicstring; char const* parity; int /*<<< orphan*/  dumptime; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  dumplength; int /*<<< orphan*/  architectureversion; } ;

/* Variables and functions */
#define  KERNELDUMP_COMP_GZIP 132 
#define  KERNELDUMP_COMP_NONE 131 
#define  KERNELDUMP_COMP_ZSTD 130 
#define  STATUS_BAD 129 
#define  STATUS_GOOD 128 
 char const* FUNC0 (void**) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(xo_handle_t *xo, const struct kerneldumpheader *h,
    const char *device, int bounds, const int status)
{
	uint64_t dumplen;
	time_t t;
	const char *stat_str;
	const char *comp_str;

	FUNC4(xo);
	FUNC3(xo, "{Lwc:Dump header from device}{:dump_device/%s}\n",
	    device);
	FUNC3(xo, "{P:  }{Lwc:Architecture}{:architecture/%s}\n",
	    h->architecture);
	FUNC3(xo,
	    "{P:  }{Lwc:Architecture Version}{:architecture_version/%u}\n",
	    FUNC1(h->architectureversion));
	dumplen = FUNC2(h->dumplength);
	FUNC3(xo, "{P:  }{Lwc:Dump Length}{:dump_length_bytes/%lld}\n",
	    (long long)dumplen);
	FUNC3(xo, "{P:  }{Lwc:Blocksize}{:blocksize/%d}\n",
	    FUNC1(h->blocksize));
	switch (h->compression) {
	case KERNELDUMP_COMP_NONE:
		comp_str = "none";
		break;
	case KERNELDUMP_COMP_GZIP:
		comp_str = "gzip";
		break;
	case KERNELDUMP_COMP_ZSTD:
		comp_str = "zstd";
		break;
	default:
		comp_str = "???";
		break;
	}
	FUNC3(xo, "{P:  }{Lwc:Compression}{:compression/%s}\n", comp_str);
	t = FUNC2(h->dumptime);
	FUNC3(xo, "{P:  }{Lwc:Dumptime}{:dumptime/%s}", FUNC0(&t));
	FUNC3(xo, "{P:  }{Lwc:Hostname}{:hostname/%s}\n", h->hostname);
	FUNC3(xo, "{P:  }{Lwc:Magic}{:magic/%s}\n", h->magic);
	FUNC3(xo, "{P:  }{Lwc:Version String}{:version_string/%s}",
	    h->versionstring);
	FUNC3(xo, "{P:  }{Lwc:Panic String}{:panic_string/%s}\n",
	    h->panicstring);
	FUNC3(xo, "{P:  }{Lwc:Dump Parity}{:dump_parity/%u}\n", h->parity);
	FUNC3(xo, "{P:  }{Lwc:Bounds}{:bounds/%d}\n", bounds);

	switch (status) {
	case STATUS_BAD:
		stat_str = "bad";
		break;
	case STATUS_GOOD:
		stat_str = "good";
		break;
	default:
		stat_str = "unknown";
		break;
	}
	FUNC3(xo, "{P:  }{Lwc:Dump Status}{:dump_status/%s}\n", stat_str);
	FUNC4(xo);
}