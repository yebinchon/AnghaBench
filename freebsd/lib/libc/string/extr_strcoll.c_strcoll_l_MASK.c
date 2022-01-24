#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct xlocale_collate {scalar_t__ __collate_load_error; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  TYPE_1__* locale_t ;
struct TYPE_6__ {scalar_t__* components; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t XLC_COLLATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,char const**,size_t,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,char const*) ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC8(const char *s, const char *s2, locale_t locale)
{
	int ret;
	wchar_t *t1 = NULL, *t2 = NULL;
	wchar_t *w1 = NULL, *w2 = NULL;
	const char *cs1, *cs2;
	mbstate_t mbs1;
	mbstate_t mbs2;
	size_t sz1, sz2;

	FUNC4(&mbs1, 0, sizeof (mbstate_t));
	FUNC4(&mbs2, 0, sizeof (mbstate_t));

	/*
	 * The mbsrtowcs_l function can set the src pointer to null upon
	 * failure, so it should act on a copy to avoid:
	 *   - sending null pointer to strcmp
	 *   - having strcoll/strcoll_l change *s or *s2 to null
	 */
	cs1 = s;
	cs2 = s2;

	FUNC0(locale);
	struct xlocale_collate *table =
		(struct xlocale_collate*)locale->components[XLC_COLLATE];

	if (table->__collate_load_error)
		goto error;

	sz1 = FUNC6(s) + 1;
	sz2 = FUNC6(s2) + 1;

	/*
	 * Simple assumption: conversion to wide format is strictly
	 * reducing, i.e. a single byte (or multibyte character)
	 * cannot result in multiple wide characters.
	 */
	if ((t1 = FUNC2(sz1 * sizeof (wchar_t))) == NULL)
		goto error;
	w1 = t1;
	if ((t2 = FUNC2(sz2 * sizeof (wchar_t))) == NULL)
		goto error;
	w2 = t2;

	if ((FUNC3(w1, &cs1, sz1, &mbs1, locale)) == (size_t)-1)
		goto error;

	if ((FUNC3(w2, &cs2, sz2, &mbs2, locale)) == (size_t)-1)
		goto error;

	ret = FUNC7(w1, w2, locale);
	FUNC1(t1);
	FUNC1(t2);

	return (ret);

error:
	FUNC1(t1);
	FUNC1(t2);
	return (FUNC5(s, s2));
}