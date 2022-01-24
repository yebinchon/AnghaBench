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
typedef  int u_long ;
typedef  scalar_t__ u_int16_t ;
struct parm {struct auth* parm_auth; } ;
struct auth {scalar_t__ type; int keyid; scalar_t__ end; scalar_t__ start; scalar_t__ key; } ;
typedef  int /*<<< orphan*/  k ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ DAY ; 
 int MAX_AUTH_KEYS ; 
 scalar_t__ RIP_AUTH_MD5 ; 
 scalar_t__ RIP_AUTH_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth*,struct auth*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct auth*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char**,char*,char*,char*,int) ; 
 char* FUNC4 (scalar_t__*,char**,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int FUNC6 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *			/* 0 or error message */
FUNC7(char *tgt,
	   char *val,
	   struct parm *parmp,
	   u_int16_t type,
	   int safe)			/* 1=from secure file */
{
	static char buf[80];
	char *val0, *p, delim;
	struct auth k, *ap, *ap2;
	int i;
	u_long l;

	FUNC0(val != NULL);
	if (!safe)
		return "ignore unsafe password";

	for (ap = parmp->parm_auth, i = 0;
	     ap->type != RIP_AUTH_NONE; i++, ap++) {
		if (i >= MAX_AUTH_KEYS)
			return "too many passwords";
	}

	FUNC2(&k, 0, sizeof(k));
	k.type = type;
	k.end = -1-DAY;

	val0 = val;
	if (0 > FUNC3(&val, "| ,\n\r", &delim,
			    (char *)k.key, sizeof(k.key)))
		return tgt;

	if (delim != '|') {
		if (type == RIP_AUTH_MD5)
			return "missing Keyid";
	} else {
		val0 = ++val;
		buf[sizeof(buf)-1] = '\0';
		if (0 > FUNC3(&val, "| ,\n\r", &delim, buf,sizeof(buf))
		    || buf[sizeof(buf)-1] != '\0'
		    || (l = FUNC6(buf,&p,0)) > 255
		    || *p != '\0') {
			FUNC5(buf,"bad KeyID \"%.20s\"", val0);
			return buf;
		}
		for (ap2 = parmp->parm_auth; ap2 < ap; ap2++) {
			if (ap2->keyid == l) {
				FUNC5(buf,"duplicate KeyID \"%.20s\"", val0);
				return buf;
			}
		}
		k.keyid = (int)l;

		if (delim == '|') {
			val0 = ++val;
			if (NULL != (p = FUNC4(&k.start,&val,val0,&delim,
						  buf,sizeof(buf))))
				return p;
			if (delim != '|')
				return "missing second timestamp";
			val0 = ++val;
			if (NULL != (p = FUNC4(&k.end,&val,val0,&delim,
						  buf,sizeof(buf))))
				return p;
			if ((u_long)k.start > (u_long)k.end) {
				FUNC5(buf,"out of order timestamp %.30s",
					val0);
				return buf;
			}
		}
	}
	if (delim != '\0')
		return tgt;

	FUNC1(ap, &k, sizeof(*ap));
	return 0;
}