#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_char ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef  TYPE_1__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AUT_HEADER32 ; 
 int AU_OFLAG_XML ; 
 int FUNC0 (TYPE_1__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__**) ; 
 char* del ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int oflags ; 
 scalar_t__ oneline ; 
 scalar_t__ partial ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(FILE *fp)
{
	u_char *buf;
	tokenstr_t tok;
	int reclen;
	int bytesread;

	/* Allow tail -f | praudit to work. */
	if (partial) {
		u_char type = 0;
		/* Record must begin with a header token. */
		do {
			type = FUNC4(fp);
		} while(type != AUT_HEADER32);
		FUNC7(type, fp);
	}

	while ((reclen = FUNC2(fp, &buf)) != -1) {
		bytesread = 0;
		while (bytesread < reclen) {
			/* Is this an incomplete record? */
			if (-1 == FUNC0(&tok, buf + bytesread,
			    reclen - bytesread))
				break;
			FUNC1(stdout, &tok, del, oflags);
			bytesread += tok.len;
			if (oneline) {
				if (!(oflags & AU_OFLAG_XML))
					FUNC6("%s", del);
			} else
				FUNC6("\n");
		}
		FUNC5(buf);
		if (oneline)
			FUNC6("\n");
		FUNC3(stdout);
	}
	return (0);
}