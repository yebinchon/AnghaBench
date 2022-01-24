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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int BUFSIZ ; 
 size_t Bflag ; 
 int CTLFLAG_TUN ; 
 int CTLFLAG_WR ; 
 int CTLTYPE ; 
#define  CTLTYPE_INT 143 
#define  CTLTYPE_LONG 142 
 int CTLTYPE_NODE ; 
#define  CTLTYPE_S16 141 
#define  CTLTYPE_S32 140 
#define  CTLTYPE_S64 139 
#define  CTLTYPE_S8 138 
#define  CTLTYPE_STRING 137 
#define  CTLTYPE_U16 136 
#define  CTLTYPE_U32 135 
#define  CTLTYPE_U64 134 
#define  CTLTYPE_U8 133 
#define  CTLTYPE_UINT 132 
#define  CTLTYPE_ULONG 131 
 int CTL_MAXNAME ; 
 int ENOENT ; 
#define  ENOMEM 130 
#define  ENOTDIR 129 
#define  EOPNOTSUPP 128 
 scalar_t__ Tflag ; 
 scalar_t__ Wflag ; 
 int /*<<< orphan*/  bflag ; 
 int /*<<< orphan*/ * ctl_typename ; 
 scalar_t__ dflag ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ iflag ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char*,int*) ; 
 int nflag ; 
 scalar_t__ FUNC4 (int*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ qflag ; 
 int FUNC8 (int*,int) ; 
 int FUNC9 (char*,int,char*,...) ; 
 size_t FUNC10 (char*) ; 
 char* FUNC11 (char**,char*) ; 
 int FUNC12 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

__attribute__((used)) static int
FUNC17(const char *string, int lineno)
{
	int len, i, j;
	const void *newval;
	char *newvalstr = NULL;
	void *newbuf;
	size_t newsize = Bflag;
	int mib[CTL_MAXNAME];
	char *cp, *bufp, buf[BUFSIZ], fmt[BUFSIZ], line[BUFSIZ];
	u_int kind;

	if (lineno)
		FUNC9(line, sizeof(line), " at line %d", lineno);
	else
		line[0] = '\0';

	cp = buf;
	if (FUNC9(buf, BUFSIZ, "%s", string) >= BUFSIZ) {
		FUNC16("oid too long: '%s'%s", string, line);
		return (1);
	}
	bufp = FUNC11(&cp, "=:");
	if (cp != NULL) {
		/* Tflag just lists tunables, do not allow assignment */
		if (Tflag || Wflag) {
			FUNC16("Can't set variables when using -T or -W");
			FUNC14();
		}
		while (FUNC2(*cp))
			cp++;
		/* Strip a pair of " or ' if any. */
		switch (*cp) {
		case '\"':
		case '\'':
			if (cp[FUNC10(cp) - 1] == *cp)
				cp[FUNC10(cp) - 1] = '\0';
			cp++;
		}
		newvalstr = cp;
		newsize = FUNC10(cp);
	}
	/* Trim spaces */
	cp = bufp + FUNC10(bufp) - 1;
	while (cp >= bufp && FUNC2((int)*cp)) {
		*cp = '\0';
		cp--;
	}
	len = FUNC3(bufp, mib);

	if (len < 0) {
		if (iflag)
			return (0);
		if (qflag)
			return (1);
		else {
			if (errno == ENOENT) {
				FUNC16("unknown oid '%s'%s", bufp, line);
			} else {
				FUNC15("unknown oid '%s'%s", bufp, line);
			}
			return (1);
		}
	}

	if (FUNC4(mib, len, fmt, &kind)) {
		FUNC15("couldn't find format of oid '%s'%s", bufp, line);
		if (iflag)
			return (1);
		else
			FUNC0(1);
	}

	if (newvalstr == NULL || dflag) {
		if ((kind & CTLTYPE) == CTLTYPE_NODE) {
			if (dflag) {
				i = FUNC8(mib, len);
				if (!i && !bflag)
					FUNC7('\n');
			}
			FUNC13(mib, len);
		} else {
			i = FUNC8(mib, len);
			if (!i && !bflag)
				FUNC7('\n');
		}
	} else {
		if ((kind & CTLTYPE) == CTLTYPE_NODE) {
			FUNC16("oid '%s' isn't a leaf node%s", bufp, line);
			return (1);
		}

		if (!(kind & CTLFLAG_WR)) {
			if (kind & CTLFLAG_TUN) {
				FUNC16("oid '%s' is a read only tunable%s", bufp, line);
				FUNC16("Tunable values are set in /boot/loader.conf");
			} else
				FUNC16("oid '%s' is read only%s", bufp, line);
			return (1);
		}

		switch (kind & CTLTYPE) {
		case CTLTYPE_INT:
		case CTLTYPE_UINT:
		case CTLTYPE_LONG:
		case CTLTYPE_ULONG:
		case CTLTYPE_S8:
		case CTLTYPE_S16:
		case CTLTYPE_S32:
		case CTLTYPE_S64:
		case CTLTYPE_U8:
		case CTLTYPE_U16:
		case CTLTYPE_U32:
		case CTLTYPE_U64:
			if (FUNC10(newvalstr) == 0) {
				FUNC16("empty numeric value");
				return (1);
			}
			/* FALLTHROUGH */
		case CTLTYPE_STRING:
			break;
		default:
			FUNC16("oid '%s' is type %d,"
				" cannot set that%s", bufp,
				kind & CTLTYPE, line);
			return (1);
		}

		newbuf = NULL;

		switch (kind & CTLTYPE) {
		case CTLTYPE_STRING:
			newval = newvalstr;
			break;
		default:
			newsize = 0;
			while ((cp = FUNC11(&newvalstr, " ,")) != NULL) {
				if (*cp == '\0')
					continue;
				if (!FUNC5(cp, fmt, kind, &newbuf,
				    &newsize)) {
					FUNC16("invalid %s '%s'%s",
					    ctl_typename[kind & CTLTYPE],
					    cp, line);
					FUNC1(newbuf);
					return (1);
				}
			}
			newval = newbuf;
			break;
		}

		i = FUNC8(mib, len);
		if (FUNC12(mib, len, 0, 0, newval, newsize) == -1) {
			FUNC1(newbuf);
			if (!i && !bflag)
				FUNC7('\n');
			switch (errno) {
			case EOPNOTSUPP:
				FUNC16("%s: value is not available%s",
					string, line);
				return (1);
			case ENOTDIR:
				FUNC16("%s: specification is incomplete%s",
					string, line);
				return (1);
			case ENOMEM:
				FUNC16("%s: type is unknown to this program%s",
					string, line);
				return (1);
			default:
				FUNC15("%s%s", string, line);
				return (1);
			}
		}
		FUNC1(newbuf);
		if (!bflag)
			FUNC6(" -> ");
		i = nflag;
		nflag = 1;
		j = FUNC8(mib, len);
		if (!j && !bflag)
			FUNC7('\n');
		nflag = i;
	}

	return (0);
}