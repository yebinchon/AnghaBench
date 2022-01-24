#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_2__ {size_t length; char const* s; } ;
struct iso9660 {TYPE_1__ utf16be; int /*<<< orphan*/  sconv_to_utf16be; } ;
struct archive_write {int /*<<< orphan*/  archive; struct iso9660* format_data; } ;
typedef  enum vdc { ____Placeholder_vdc } vdc ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ ENOMEM ; 
 int VDC_UCS2 ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(struct archive_write *a, unsigned char *p, const char *s,
    size_t l, uint16_t uf, enum vdc vdc)
{
	size_t size, i;
	int onepad;

	if (s == NULL)
		s = "";
	if (l & 0x01) {
		onepad = 1;
		l &= ~1;
	} else
		onepad = 0;
	if (vdc == VDC_UCS2) {
		struct iso9660 *iso9660 = a->format_data;
		if (FUNC2(&iso9660->utf16be, s, FUNC5(s),
		    iso9660->sconv_to_utf16be) != 0 && errno == ENOMEM) {
			FUNC1(&a->archive, ENOMEM,
			    "Can't allocate memory for UTF-16BE");
			return (ARCHIVE_FATAL);
		}
		size = iso9660->utf16be.length;
		if (size > l)
			size = l;
		FUNC4(p, iso9660->utf16be.s, size);
	} else {
		const uint16_t *u16 = (const uint16_t *)s;

		size = 0;
		while (*u16++)
			size += 2;
		if (size > l)
			size = l;
		FUNC4(p, s, size);
	}
	for (i = 0; i < size; i += 2, p += 2) {
		if (!FUNC3(p[0], p[1]))
			FUNC0(p, 0x005F);/* '_' */
	}
	l -= size;
	while (l > 0) {
		FUNC0(p, uf);
		p += 2;
		l -= 2;
	}
	if (onepad)
		*p = 0;
	return (ARCHIVE_OK);
}