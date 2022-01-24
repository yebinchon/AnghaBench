#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct xlocale_collate {scalar_t__ __collate_load_error; } ;
typedef  TYPE_1__* locale_t ;
struct TYPE_5__ {scalar_t__* components; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t XLC_COLLATE ; 
 size_t FUNC1 (struct xlocale_collate*,int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,char const*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 size_t FUNC6 (char const*) ; 

size_t
FUNC7(char * __restrict dest, const char * __restrict src, size_t len, locale_t locale)
{
	size_t slen;
	size_t xlen;
	wchar_t *wcs = NULL;

	FUNC0(locale);
	struct xlocale_collate *table =
		(struct xlocale_collate*)locale->components[XLC_COLLATE];

	if (!*src) {
		if (len > 0)
			*dest = '\0';
		return (0);
	}

	/*
	 * The conversion from multibyte to wide character strings is
	 * strictly reducing (one byte of an mbs cannot expand to more
	 * than one wide character.)
	 */
	slen = FUNC6(src);

	if (table->__collate_load_error)
		goto error;

	if ((wcs = FUNC3((slen + 1) * sizeof (wchar_t))) == NULL)
		goto error;

	if (FUNC4(wcs, src, slen + 1, locale) == (size_t)-1)
		goto error;

	if ((xlen = FUNC1(table, wcs, dest, len)) == (size_t)-1)
		goto error;

	FUNC2(wcs);

	if (len > xlen) {
		dest[xlen] = 0;
	} else if (len) {
		dest[len-1] = 0;
	}

	return (xlen);

error:
	/* errno should be set to ENOMEM if malloc failed */
	FUNC2(wcs);
	FUNC5(dest, src, len);

	return (slen);
}