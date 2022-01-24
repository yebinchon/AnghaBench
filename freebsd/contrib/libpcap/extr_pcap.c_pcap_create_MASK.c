#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_7__ {char* device; } ;
struct TYPE_8__ {TYPE_1__ opt; } ;
typedef  TYPE_2__ pcap_t ;
struct TYPE_9__ {TYPE_2__* (* create_op ) (char*,char*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 TYPE_6__* capture_source_types ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 TYPE_2__* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,int /*<<< orphan*/  const*) ; 
 char* FUNC5 (char const*) ; 
 TYPE_2__* FUNC6 (char*,char*,int*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 

pcap_t *
FUNC8(const char *device, char *errbuf)
{
	size_t i;
	int is_theirs;
	pcap_t *p;
	char *device_str;

	/*
	 * A null device name is equivalent to the "any" device -
	 * which might not be supported on this platform, but
	 * this means that you'll get a "not supported" error
	 * rather than, say, a crash when we try to dereference
	 * the null pointer.
	 */
	if (device == NULL)
		device_str = FUNC5("any");
	else {
#ifdef _WIN32
		/*
		 * If the string appears to be little-endian UCS-2/UTF-16,
		 * convert it to ASCII.
		 *
		 * XXX - to UTF-8 instead?  Or report an error if any
		 * character isn't ASCII?
		 */
		if (device[0] != '\0' && device[1] == '\0') {
			size_t length;

			length = wcslen((wchar_t *)device);
			device_str = (char *)malloc(length + 1);
			if (device_str == NULL) {
				pcap_fmt_errmsg_for_errno(errbuf,
				    PCAP_ERRBUF_SIZE, errno,
				    "malloc");
				return (NULL);
			}

			pcap_snprintf(device_str, length + 1, "%ws",
			    (const wchar_t *)device);
		} else
#endif
			device_str = FUNC5(device);
	}
	if (device_str == NULL) {
		FUNC3(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "malloc");
		return (NULL);
	}

	/*
	 * Try each of the non-local-network-interface capture
	 * source types until we find one that works for this
	 * device or run out of types.
	 */
	for (i = 0; capture_source_types[i].create_op != NULL; i++) {
		is_theirs = 0;
		p = capture_source_types[i].create_op(device_str, errbuf,
		    &is_theirs);
		if (is_theirs) {
			/*
			 * The device name refers to a device of the
			 * type in question; either it succeeded,
			 * in which case p refers to a pcap_t to
			 * later activate for the device, or it
			 * failed, in which case p is null and we
			 * should return that to report the failure
			 * to create.
			 */
			if (p == NULL) {
				/*
				 * We assume the caller filled in errbuf.
				 */
				FUNC0(device_str);
				return (NULL);
			}
			p->opt.device = device_str;
			return (p);
		}
	}

	/*
	 * OK, try it as a regular network interface.
	 */
	p = FUNC2(device_str, errbuf);
	if (p == NULL) {
		/*
		 * We assume the caller filled in errbuf.
		 */
		FUNC0(device_str);
		return (NULL);
	}
	p->opt.device = device_str;
	return (p);
}