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
struct passwd {char* pw_dir; char* pw_name; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(const char * var, const struct passwd * pwd, int hlen, int pch, int nlen)
{
    char    *np = NULL;

    if (var != NULL) {
	int	tildes = 0;
	int	dollas = 0;
	char	*p;
	const char *q;

	if (pwd != NULL) {
	    for (q = var; *q != '\0'; ++q) {
		tildes += (*q == '~');
		dollas += (*q == '$');
	    }
	}

	np = FUNC0(FUNC4(var) + (dollas * nlen)
		    - dollas + (tildes * (pch+hlen))
		    - tildes + 1);

	if (np != NULL) {
	    p = FUNC2(np, var);

	    if (pwd != NULL) {
		/*
		 * This loop does user username and homedir substitutions
		 * for unescaped $ (username) and ~ (homedir)
		 */
		while (*(p += FUNC3(p, "~$")) != '\0') {
		    int	l = FUNC4(p);

		    if (p > np && *(p-1) == '\\')  /* Escaped: */
			FUNC1(p - 1, p, l + 1); /* Slide-out the backslash */
		    else if (*p == '~') {
			int	v = pch && *(p+1) != '/'; /* Avoid double // */
			FUNC1(p + hlen + v, p + 1, l);  /* Subst homedir */
			FUNC1(p, pwd->pw_dir, hlen);
			if (v)
			    p[hlen] = '/';
			p += hlen + v;
		    }
		    else /* if (*p == '$') */ {
			FUNC1(p + nlen, p + 1, l);	/* Subst username */
			FUNC1(p, pwd->pw_name, nlen);
			p += nlen;
		    }
		}
	    }
	}
    }

    return (np);
}