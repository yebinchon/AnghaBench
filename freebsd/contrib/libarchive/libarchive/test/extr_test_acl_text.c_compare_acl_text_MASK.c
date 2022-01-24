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
typedef  char wchar_t ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (struct archive_entry*,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (struct archive_entry*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(struct archive_entry *ae, int flags, const char *s)
{
	char *text;
	wchar_t *wtext;
	wchar_t *ws;
	ssize_t slen;

	ws = FUNC5(s);

	text = FUNC0(ae, &slen, flags);
	FUNC3(text, s);
	if (text != NULL)
		FUNC2(FUNC7(text), slen);
	wtext = FUNC1(ae, &slen, flags);
	FUNC4(wtext, ws);
	if (wtext != NULL) {
		FUNC2(FUNC8(wtext), slen);
	}
	FUNC6(text);
	FUNC6(wtext);
	FUNC6(ws);
}