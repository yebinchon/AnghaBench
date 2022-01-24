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
#define  MDT_MODULE 130 
#define  MDT_PNP_INFO 129 
#define  MDT_VERSION 128 
 int /*<<< orphan*/  all_flag ; 
 int /*<<< orphan*/  dump_flag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void**,char*) ; 
 void* hints ; 
 void* hints_end ; 
 int FUNC4 (char*,char const*) ; 
 char* FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char const*,char*) ; 
 scalar_t__ unbound_flag ; 
 scalar_t__ verbose_flag ; 

__attribute__((used)) static void
FUNC13(const char *bus, const char *dev, const char *pnpinfo)
{
	char val1[256], val2[256];
	int ival, len, ents, i, notme, mask, bit, v, found;
	void *ptr, *walker;
	char *lastmod = NULL, *cp, *s;

	walker = hints;
	FUNC2(&walker);
	found = 0;
	if (verbose_flag)
		FUNC6("Searching bus %s dev %s for pnpinfo %s\n",
		    bus, dev, pnpinfo);
	while (walker < hints_end) {
		len = FUNC2(&walker);
		ival = FUNC2(&walker);
		ptr = walker;
		switch (ival) {
		case MDT_VERSION:
			FUNC3(&ptr, val1);
			ival = FUNC2(&ptr);
			FUNC3(&ptr, val2);
			if (dump_flag || verbose_flag)
				FUNC6("Version: if %s.%d kmod %s\n", val1, ival, val2);
			break;
		case MDT_MODULE:
			FUNC3(&ptr, val1);
			FUNC3(&ptr, val2);
			if (lastmod)
				FUNC1(lastmod);
			lastmod = FUNC10(val2);
			if (dump_flag || verbose_flag)
				FUNC6("Module %s in %s\n", val1, val2);
			break;
		case MDT_PNP_INFO:
			if (!dump_flag && !unbound_flag && lastmod && FUNC8(lastmod, "kernel") == 0)
				break;
			FUNC3(&ptr, val1);
			FUNC3(&ptr, val2);
			ents = FUNC2(&ptr);
			if (dump_flag || verbose_flag)
				FUNC6("PNP info for bus %s format %s %d entries (%s)\n",
				    val1, val2, ents, lastmod);
			if (FUNC8(val1, "usb") == 0) {
				if (verbose_flag)
					FUNC6("Treating usb as uhub -- bug in source table still?\n");
				FUNC9(val1, "uhub");
			}
			if (bus && FUNC8(val1, bus) != 0) {
				if (verbose_flag)
					FUNC6("Skipped because table for bus %s, looking for %s\n",
					    val1, bus);
				break;
			}
			for (i = 0; i < ents; i++) {
				if (verbose_flag)
					FUNC6("---------- Entry %d ----------\n", i);
				if (dump_flag)
					FUNC6("   ");
				cp = val2;
				notme = 0;
				mask = -1;
				bit = -1;
				do {
					switch (*cp) {
						/* All integer fields */
					case 'I':
					case 'J':
					case 'G':
					case 'L':
					case 'M':
						ival = FUNC2(&ptr);
						if (dump_flag) {
							FUNC6("%#x:", ival);
							break;
						}
						if (bit >= 0 && ((1 << bit) & mask) == 0)
							break;
						v = FUNC4(cp + 2, pnpinfo);
						if (verbose_flag)
							FUNC6("Matching %s (%c) table=%#x tomatch=%#x\n",
							    cp + 2, *cp, v, ival);
						switch (*cp) {
						case 'J':
							if (ival == -1)
								break;
							/*FALLTHROUGH*/
						case 'I':
							if (v != ival)
								notme++;
							break;
						case 'G':
							if (v < ival)
								notme++;
							break;
						case 'L':
							if (v > ival)
								notme++;
							break;
						case 'M':
							mask = ival;
							break;
						}
						break;
						/* String fields */
					case 'D':
					case 'Z':
						FUNC3(&ptr, val1);
						if (dump_flag) {
							FUNC6("'%s':", val1);
							break;
						}
						if (*cp == 'D')
							break;
						s = FUNC5(cp + 2, pnpinfo);
						if (FUNC8(s, val1) != 0)
							notme++;
						break;
						/* Key override fields, required to be last in the string */
					case 'T':
						/*
						 * This is imperfect and only does one key and will be redone
						 * to be more general for multiple keys. Currently, nothing
						 * does that.
						 */
						if (dump_flag)				/* No per-row data stored */
							break;
						if (cp[FUNC11(cp) - 1] == ';')		/* Skip required ; at end */
							cp[FUNC11(cp) - 1] = '\0';	/* in case it's not there */
						if ((s = FUNC12(pnpinfo, cp + 2)) == NULL)
							notme++;
						else if (s > pnpinfo && s[-1] != ' ')
							notme++;
						break;
					default:
						FUNC0(stderr, "Unknown field type %c\n:", *cp);
						break;
					}
					bit++;
					cp = FUNC7(cp, ';');
					if (cp)
						cp++;
				} while (cp && *cp);
				if (dump_flag)
					FUNC6("\n");
				else if (!notme) {
					if (!unbound_flag) {
						if (all_flag)
							FUNC6("%s: %s", *dev ? dev : "unattached", lastmod);
						else
							FUNC6("%s\n", lastmod);
						if (verbose_flag)
							FUNC6("Matches --- %s ---\n", lastmod);
					}
					found++;
				}
			}
			break;
		default:
			if (dump_flag)
				FUNC6("Unknown Type %d len %d\n", ival, len);
			break;
		}
		walker = (void *)(len - sizeof(int) + (intptr_t)walker);
	}
	if (unbound_flag && found == 0 && *pnpinfo) {
		if (verbose_flag)
			FUNC6("------------------------- ");
		FUNC6("%s on %s pnpinfo %s", *dev ? dev : "unattached", bus, pnpinfo);
		if (verbose_flag)
			FUNC6(" -------------------------");
		FUNC6("\n");
	}
	FUNC1(lastmod);
}