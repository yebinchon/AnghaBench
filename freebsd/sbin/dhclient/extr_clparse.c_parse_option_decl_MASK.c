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
typedef  char u_int8_t ;
struct universe {int /*<<< orphan*/ * hash; } ;
struct option_data {char* data; unsigned int len; } ;
struct option {char* format; size_t code; } ;
struct iaddr {unsigned int len; char* iabuf; } ;
typedef  int /*<<< orphan*/  hunkbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int COMMA ; 
 int DOT ; 
 int NUMBER ; 
 int SEMI ; 
 int STRING ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int) ; 
 struct universe dhcp_universe ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int) ; 
 int FUNC7 (char**,int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct iaddr*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 char* FUNC14 (char*) ; 
 unsigned int FUNC15 (char*) ; 
 int /*<<< orphan*/  universe_hash ; 
 int /*<<< orphan*/  FUNC16 (char*,char const) ; 

struct option *
FUNC17(FILE *cfile, struct option_data *options)
{
	char		*val;
	int		 token;
	u_int8_t	 buf[4];
	u_int8_t	 hunkbuf[1024];
	unsigned	 hunkix = 0;
	char		*vendor;
	const char	*fmt;
	struct universe	*universe;
	struct option	*option;
	struct iaddr	 ip_addr;
	u_int8_t	*dp;
	unsigned	 len;
	int		 nul_term = 0;

	token = FUNC7(&val, cfile);
	if (!FUNC4(token)) {
		FUNC10("expecting identifier after option keyword.");
		if (token != SEMI)
			FUNC12(cfile);
		return (NULL);
	}
	if ((vendor = FUNC14(val)) == NULL)
		FUNC1("no memory for vendor information.");

	token = FUNC11(&val, cfile);
	if (token == DOT) {
		/* Go ahead and take the DOT token... */
		token = FUNC7(&val, cfile);

		/* The next token should be an identifier... */
		token = FUNC7(&val, cfile);
		if (!FUNC4(token)) {
			FUNC10("expecting identifier after '.'");
			if (token != SEMI)
				FUNC12(cfile);
			FUNC2(vendor);
			return (NULL);
		}

		/* Look up the option name hash table for the specified
		   vendor. */
		universe = ((struct universe *)FUNC3(&universe_hash,
		    (unsigned char *)vendor, 0));
		/* If it's not there, we can't parse the rest of the
		   declaration. */
		if (!universe) {
			FUNC10("no vendor named %s.", vendor);
			FUNC12(cfile);
			FUNC2(vendor);
			return (NULL);
		}
	} else {
		/* Use the default hash table, which contains all the
		   standard dhcp option names. */
		val = vendor;
		universe = &dhcp_universe;
	}

	/* Look up the actual option info... */
	option = (struct option *)FUNC3(universe->hash,
	    (unsigned char *)val, 0);

	/* If we didn't get an option structure, it's an undefined option. */
	if (!option) {
		if (val == vendor)
			FUNC10("no option named %s", val);
		else
			FUNC10("no option named %s for vendor %s",
				    val, vendor);
		FUNC12(cfile);
		FUNC2(vendor);
		return (NULL);
	}

	/* Free the initial identifier token. */
	FUNC2(vendor);

	/* Parse the option data... */
	do {
		for (fmt = option->format; *fmt; fmt++) {
			if (*fmt == 'A')
				break;
			switch (*fmt) {
			case 'X':
				len = FUNC8(cfile, &hunkbuf[hunkix],
				    sizeof(hunkbuf) - hunkix);
				hunkix += len;
				break;
			case 't': /* Text string... */
				token = FUNC7(&val, cfile);
				if (token != STRING) {
					FUNC10("expecting string.");
					FUNC12(cfile);
					return (NULL);
				}
				len = FUNC15(val);
				if (hunkix + len + 1 > sizeof(hunkbuf)) {
					FUNC10("option data buffer %s",
					    "overflow");
					FUNC12(cfile);
					return (NULL);
				}
				FUNC6(&hunkbuf[hunkix], val, len + 1);
				nul_term = 1;
				hunkix += len;
				break;
			case 'I': /* IP address. */
				if (!FUNC9(cfile, &ip_addr))
					return (NULL);
				len = ip_addr.len;
				dp = ip_addr.iabuf;
alloc:
				if (hunkix + len > sizeof(hunkbuf)) {
					FUNC10("option data buffer "
					    "overflow");
					FUNC12(cfile);
					return (NULL);
				}
				FUNC6(&hunkbuf[hunkix], dp, len);
				hunkix += len;
				break;
			case 'L':	/* Unsigned 32-bit integer... */
			case 'l':	/* Signed 32-bit integer... */
				token = FUNC7(&val, cfile);
				if (token != NUMBER) {
need_number:
					FUNC10("expecting number.");
					if (token != SEMI)
						FUNC12(cfile);
					return (NULL);
				}
				FUNC0(buf, val, 0, 32);
				len = 4;
				dp = buf;
				goto alloc;
			case 's':	/* Signed 16-bit integer. */
			case 'S':	/* Unsigned 16-bit integer. */
				token = FUNC7(&val, cfile);
				if (token != NUMBER)
					goto need_number;
				FUNC0(buf, val, 0, 16);
				len = 2;
				dp = buf;
				goto alloc;
			case 'b':	/* Signed 8-bit integer. */
			case 'B':	/* Unsigned 8-bit integer. */
				token = FUNC7(&val, cfile);
				if (token != NUMBER)
					goto need_number;
				FUNC0(buf, val, 0, 8);
				len = 1;
				dp = buf;
				goto alloc;
			case 'f': /* Boolean flag. */
				token = FUNC7(&val, cfile);
				if (!FUNC4(token)) {
					FUNC10("expecting identifier.");
bad_flag:
					if (token != SEMI)
						FUNC12(cfile);
					return (NULL);
				}
				if (!FUNC13(val, "true") ||
				    !FUNC13(val, "on"))
					buf[0] = 1;
				else if (!FUNC13(val, "false") ||
				    !FUNC13(val, "off"))
					buf[0] = 0;
				else {
					FUNC10("expecting boolean.");
					goto bad_flag;
				}
				len = 1;
				dp = buf;
				goto alloc;
			default:
				FUNC16("Bad format %c in parse_option_param.",
				    *fmt);
				FUNC12(cfile);
				return (NULL);
			}
		}
		token = FUNC7(&val, cfile);
	} while (*fmt == 'A' && token == COMMA);

	if (token != SEMI) {
		FUNC10("semicolon expected.");
		FUNC12(cfile);
		return (NULL);
	}

	options[option->code].data = FUNC5(hunkix + nul_term);
	if (!options[option->code].data)
		FUNC1("out of memory allocating option data.");
	FUNC6(options[option->code].data, hunkbuf, hunkix + nul_term);
	options[option->code].len = hunkix;
	return (option);
}