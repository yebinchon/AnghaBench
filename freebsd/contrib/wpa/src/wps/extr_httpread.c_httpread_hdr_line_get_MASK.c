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
struct httpread {char* hdr; } ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

char * FUNC3(struct httpread *h, const char *tag)
{
	int tag_len = FUNC1(tag);
	char *hdr = h->hdr;
	hdr = FUNC0(hdr, '\n');
	if (hdr == NULL)
		return NULL;
	hdr++;
	for (;;) {
		if (!FUNC2(hdr, tag, tag_len)) {
			hdr += tag_len;
			while (*hdr == ' ' || *hdr == '\t')
				hdr++;
			return hdr;
		}
		hdr = FUNC0(hdr, '\n');
		if (hdr == NULL)
			return NULL;
		hdr++;
	}
}