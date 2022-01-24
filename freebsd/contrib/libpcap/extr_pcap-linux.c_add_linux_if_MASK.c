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
struct ifreq {int /*<<< orphan*/  ifr_flags; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  pcap_if_list_t ;

/* Variables and functions */
 scalar_t__ ENODEV ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  get_if_flags ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(pcap_if_list_t *devlistp, const char *ifname, int fd, char *errbuf)
{
	const char *p;
	char name[512];	/* XXX - pick a size */
	char *q, *saveq;
	struct ifreq ifrflags;

	/*
	 * Get the interface name.
	 */
	p = ifname;
	q = &name[0];
	while (*p != '\0' && FUNC2(*p) && !FUNC4(*p)) {
		if (*p == ':') {
			/*
			 * This could be the separator between a
			 * name and an alias number, or it could be
			 * the separator between a name with no
			 * alias number and the next field.
			 *
			 * If there's a colon after digits, it
			 * separates the name and the alias number,
			 * otherwise it separates the name and the
			 * next field.
			 */
			saveq = q;
			while (FUNC2(*p) && FUNC3(*p))
				*q++ = *p++;
			if (*p != ':') {
				/*
				 * That was the next field,
				 * not the alias number.
				 */
				q = saveq;
			}
			break;
		} else
			*q++ = *p++;
	}
	*q = '\0';

	/*
	 * Get the flags for this interface.
	 */
	FUNC6(ifrflags.ifr_name, name, sizeof(ifrflags.ifr_name));
	if (FUNC1(fd, SIOCGIFFLAGS, (char *)&ifrflags) < 0) {
		if (errno == ENXIO || errno == ENODEV)
			return (0);	/* device doesn't actually exist - ignore it */
		FUNC5(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "SIOCGIFFLAGS: %.*s",
		    (int)sizeof(ifrflags.ifr_name),
		    ifrflags.ifr_name);
		return (-1);
	}

	/*
	 * Add an entry for this interface, with no addresses, if it's
	 * not already in the list.
	 */
	if (FUNC0(devlistp, name, ifrflags.ifr_flags,
	    get_if_flags, errbuf) == NULL) {
		/*
		 * Failure.
		 */
		return (-1);
	}

	return (0);
}