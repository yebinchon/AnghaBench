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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int MAX_AUDIT_RECORD_SIZE ; 
 scalar_t__ FUNC0 (int,short,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,size_t,char const*) ; 

__attribute__((used)) static void
FUNC7(const char *directory, const char *filename, token_t *tok,
    short event)
{
	u_char buffer[MAX_AUDIT_RECORD_SIZE];
	size_t buflen;
	int au, fd;

	au = FUNC1();
	if (au < 0)
		FUNC4(EX_UNAVAILABLE, "au_open");
	if (FUNC2(au, tok) < 0)
		FUNC4(EX_UNAVAILABLE, "au_write");
	buflen = MAX_AUDIT_RECORD_SIZE;
	if (FUNC0(au, event, buffer, &buflen) < 0)
		FUNC4(EX_UNAVAILABLE, "au_close_buffer");
	fd = FUNC5(directory, filename);
	FUNC6(fd, buffer, buflen, filename);
	FUNC3(fd);
}