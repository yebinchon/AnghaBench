#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int linktype_ext; int /*<<< orphan*/  errbuf; int /*<<< orphan*/  linktype; int /*<<< orphan*/  activated; } ;
typedef  TYPE_1__ pcap_t ;
typedef  int /*<<< orphan*/  pcap_dumper_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * stdout ; 

pcap_dumper_t *
FUNC5(pcap_t *p, const char *fname)
{
	FILE *f;
	int linktype;

	/*
	 * If this pcap_t hasn't been activated, it doesn't have a
	 * link-layer type, so we can't use it.
	 */
	if (!p->activated) {
		FUNC4(p->errbuf, PCAP_ERRBUF_SIZE,
		    "%s: not-yet-activated pcap_t passed to pcap_dump_open",
		    fname);
		return (NULL);
	}
	linktype = FUNC0(p->linktype);
	if (linktype == -1) {
		FUNC4(p->errbuf, PCAP_ERRBUF_SIZE,
		    "%s: link-layer type %d isn't supported in savefiles",
		    fname, p->linktype);
		return (NULL);
	}
	linktype |= p->linktype_ext;

	if (fname == NULL) {
		FUNC4(p->errbuf, PCAP_ERRBUF_SIZE,
		    "A null pointer was supplied as the file name");
		return NULL;
	}
	if (fname[0] == '-' && fname[1] == '\0') {
		f = stdout;
		fname = "standard output";
	} else {
		/*
		 * "b" is supported as of C90, so *all* UN*Xes should
		 * support it, even though it does nothing.  It's
		 * required on Windows, as the file is a binary file
		 * and must be written in binary mode.
		 */
		f = FUNC1(fname, "wb");
		if (f == NULL) {
			FUNC2(p->errbuf, PCAP_ERRBUF_SIZE,
			    errno, "%s", fname);
			return (NULL);
		}
	}
	return (FUNC3(p, linktype, f, fname));
}