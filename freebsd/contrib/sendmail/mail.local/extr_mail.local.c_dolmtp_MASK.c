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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/  EightBitMime ; 
 int HoldErrs ; 
 int RCPT_GROW ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int StripRcptDomain ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char,int) ; 
 char* FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC17 (char*,int*) ; 
 char* FUNC18 (char*,char) ; 
 int FUNC19 (char*) ; 

void
FUNC20()
{
	char *return_path = NULL;
	char **rcpt_addr = NULL;
	int rcpt_num = 0;
	int rcpt_alloc = 0;
	bool gotlhlo = false;
	char *err;
	int msgfd;
	char *p;
	int i;
	char myhostname[1024];
	char buf[4096];

	FUNC9(myhostname, '\0', sizeof myhostname);
	(void) FUNC7(myhostname, sizeof myhostname - 1);
	if (myhostname[0] == '\0')
		FUNC15(myhostname, "localhost", sizeof myhostname);

	FUNC11("220 %s LMTP ready\r\n", myhostname);
	for (;;)
	{
		(void) FUNC3(stdout);
		if (FUNC4(buf, sizeof(buf) - 1, stdin) == NULL)
			FUNC13(EX_OK);
		p = buf + FUNC19(buf) - 1;
		if (p >= buf && *p == '\n')
			*p-- = '\0';
		if (p >= buf && *p == '\r')
			*p-- = '\0';

		switch (buf[0])
		{
		  case 'd':
		  case 'D':
			if (FUNC14(buf, "data") == 0)
			{
				bool inbody = false;

				if (rcpt_num == 0)
				{
					FUNC8("503 5.5.1", "No recipients");
					continue;
				}
				HoldErrs = true;
				msgfd = FUNC17(return_path, &inbody);
				HoldErrs = false;
				if (msgfd < 0 && !inbody)
				{
					FUNC5();
					continue;
				}

				for (i = 0; i < rcpt_num; i++)
				{
					if (msgfd < 0)
					{
						/* print error for rcpt */
						FUNC5();
						continue;
					}
					p = FUNC18(rcpt_addr[i], '+');
					if (p != NULL)
						*p = '\0';
					FUNC2(msgfd, rcpt_addr[i]);
				}
				if (msgfd >= 0)
					(void) FUNC1(msgfd);
				goto rset;
			}
			goto syntaxerr;
			/* NOTREACHED */
			break;

		  case 'l':
		  case 'L':
			if (FUNC16(buf, "lhlo ", 5) == 0)
			{
				/* check for duplicate per RFC 1651 4.2 */
				if (gotlhlo)
				{
					FUNC8("503", "%s Duplicate LHLO",
					       myhostname);
					continue;
				}
				gotlhlo = true;
				FUNC11("250-%s\r\n", myhostname);
				if (EightBitMime)
					FUNC11("250-8BITMIME\r\n");
				FUNC11("250-ENHANCEDSTATUSCODES\r\n");
				FUNC11("250 PIPELINING\r\n");
				continue;
			}
			goto syntaxerr;
			/* NOTREACHED */
			break;

		  case 'm':
		  case 'M':
			if (FUNC16(buf, "mail ", 5) == 0)
			{
				if (return_path != NULL)
				{
					FUNC8("503 5.5.1",
						"Nested MAIL command");
					continue;
				}
				if (FUNC16(buf + 5, "from:", 5) != 0 ||
				    ((return_path = FUNC10(buf + 10,
							      false)) == NULL))
				{
					FUNC8("501 5.5.4",
						"Syntax error in parameters");
					continue;
				}
				FUNC11("250 2.5.0 Ok\r\n");
				continue;
			}
			goto syntaxerr;
			/* NOTREACHED */
			break;

		  case 'n':
		  case 'N':
			if (FUNC14(buf, "noop") == 0)
			{
				FUNC11("250 2.0.0 Ok\r\n");
				continue;
			}
			goto syntaxerr;
			/* NOTREACHED */
			break;

		  case 'q':
		  case 'Q':
			if (FUNC14(buf, "quit") == 0)
			{
				FUNC11("221 2.0.0 Bye\r\n");
				FUNC13(EX_OK);
			}
			goto syntaxerr;
			/* NOTREACHED */
			break;

		  case 'r':
		  case 'R':
			if (FUNC16(buf, "rcpt ", 5) == 0)
			{
				if (return_path == NULL)
				{
					FUNC8("503 5.5.1",
						"Need MAIL command");
					continue;
				}
				if (rcpt_num >= rcpt_alloc)
				{
					rcpt_alloc += RCPT_GROW;
					rcpt_addr = (char **)
						FUNC0((char *) rcpt_addr,
							rcpt_alloc *
							sizeof(char **));
					if (rcpt_addr == NULL)
					{
						FUNC8("421 4.3.0",
							"Memory exhausted");
						FUNC13(EX_TEMPFAIL);
					}
				}
				if (FUNC16(buf + 5, "to:", 3) != 0 ||
				    ((rcpt_addr[rcpt_num] = FUNC10(buf + 8,
								      StripRcptDomain)) == NULL))
				{
					FUNC8("501 5.5.4",
						"Syntax error in parameters");
					continue;
				}
				err = FUNC12(rcpt_addr[rcpt_num]);
				if (err != NULL)
				{
					FUNC8(NULL, "%s", err);
					continue;
				}
				rcpt_num++;
				FUNC11("250 2.1.5 Ok\r\n");
				continue;
			}
			else if (FUNC14(buf, "rset") == 0)
			{
				FUNC11("250 2.0.0 Ok\r\n");

rset:
				while (rcpt_num > 0)
					FUNC6(rcpt_addr[--rcpt_num]);
				if (return_path != NULL)
					FUNC6(return_path);
				return_path = NULL;
				continue;
			}
			goto syntaxerr;
			/* NOTREACHED */
			break;

		  case 'v':
		  case 'V':
			if (FUNC16(buf, "vrfy ", 5) == 0)
			{
				FUNC11("252 2.3.3 Try RCPT to attempt delivery\r\n");
				continue;
			}
			goto syntaxerr;
			/* NOTREACHED */
			break;

		  default:
  syntaxerr:
			FUNC8("500 5.5.2", "Syntax error");
			continue;
			/* NOTREACHED */
			break;
		}
	}
}