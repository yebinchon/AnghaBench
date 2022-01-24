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
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  final ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,int) ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char*,char const*) ; 
 char* FUNC6 (char*,char const*,int) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,int) ; 

int
FUNC9(const char *pw, const char *salt, char *buffer)
{
	MD5_CTX	ctx,ctx1;
	unsigned long l;
	int sl, pl;
	u_int i;
	u_char final[MD5_SIZE];
	const char *ep;
	static const char *magic = "$1$";

	/* If the salt starts with the magic string, skip that. */
	if (!FUNC8(salt, magic, FUNC7(magic)))
		salt += FUNC7(magic);

	/* It stops at the first '$', max 8 chars */
	for (ep = salt; *ep && *ep != '$' && ep < salt + 8; ep++)
		continue;

	/* get the length of the true salt */
	sl = ep - salt;

	FUNC1(&ctx);

	/* The password first, since that is what is most unknown */
	FUNC2(&ctx, (const u_char *)pw, FUNC7(pw));

	/* Then our magic string */
	FUNC2(&ctx, (const u_char *)magic, FUNC7(magic));

	/* Then the raw salt */
	FUNC2(&ctx, (const u_char *)salt, (u_int)sl);

	/* Then just as many characters of the MD5(pw,salt,pw) */
	FUNC1(&ctx1);
	FUNC2(&ctx1, (const u_char *)pw, FUNC7(pw));
	FUNC2(&ctx1, (const u_char *)salt, (u_int)sl);
	FUNC2(&ctx1, (const u_char *)pw, FUNC7(pw));
	FUNC0(final, &ctx1);
	for(pl = (int)FUNC7(pw); pl > 0; pl -= MD5_SIZE)
		FUNC2(&ctx, (const u_char *)final,
		    (u_int)(pl > MD5_SIZE ? MD5_SIZE : pl));

	/* Don't leave anything around in vm they could use. */
	FUNC4(final, 0, sizeof(final));

	/* Then something really weird... */
	for (i = FUNC7(pw); i; i >>= 1)
		if(i & 1)
		    FUNC2(&ctx, (const u_char *)final, 1);
		else
		    FUNC2(&ctx, (const u_char *)pw, 1);

	/* Now make the output string */
	buffer = FUNC5(buffer, magic);
	buffer = FUNC6(buffer, salt, (u_int)sl);
	*buffer++ = '$';

	FUNC0(final, &ctx);

	/*
	 * and now, just to make sure things don't run too fast
	 * On a 60 Mhz Pentium this takes 34 msec, so you would
	 * need 30 seconds to build a 1000 entry dictionary...
	 */
	for(i = 0; i < 1000; i++) {
		FUNC1(&ctx1);
		if(i & 1)
			FUNC2(&ctx1, (const u_char *)pw, FUNC7(pw));
		else
			FUNC2(&ctx1, (const u_char *)final, MD5_SIZE);

		if(i % 3)
			FUNC2(&ctx1, (const u_char *)salt, (u_int)sl);

		if(i % 7)
			FUNC2(&ctx1, (const u_char *)pw, FUNC7(pw));

		if(i & 1)
			FUNC2(&ctx1, (const u_char *)final, MD5_SIZE);
		else
			FUNC2(&ctx1, (const u_char *)pw, FUNC7(pw));
		FUNC0(final, &ctx1);
	}

	l = (final[ 0]<<16) | (final[ 6]<<8) | final[12];
	FUNC3(buffer, l, 4); buffer += 4;
	l = (final[ 1]<<16) | (final[ 7]<<8) | final[13];
	FUNC3(buffer, l, 4); buffer += 4;
	l = (final[ 2]<<16) | (final[ 8]<<8) | final[14];
	FUNC3(buffer, l, 4); buffer += 4;
	l = (final[ 3]<<16) | (final[ 9]<<8) | final[15];
	FUNC3(buffer, l, 4); buffer += 4;
	l = (final[ 4]<<16) | (final[10]<<8) | final[ 5];
	FUNC3(buffer, l, 4); buffer += 4;
	l = final[11];
	FUNC3(buffer, l, 2); buffer += 2;
	*buffer = '\0';

	/* Don't leave anything around in vm they could use. */
	FUNC4(final, 0, sizeof(final));

	return (0);
}