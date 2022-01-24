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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,size_t,char const*) ; 

__attribute__((used)) static void
FUNC5(const char *directory, const char *filename, token_t *tok)
{
	u_char buffer[MAX_AUDIT_RECORD_SIZE];
	size_t buflen;
	int fd;

	buflen = MAX_AUDIT_RECORD_SIZE;
	if (FUNC0(tok, buffer, &buflen) < 0)
		FUNC2(EX_UNAVAILABLE, "au_close_token");
	fd = FUNC3(directory, filename);
	FUNC4(fd, buffer, buflen, filename);
	FUNC1(fd);
}