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
struct node_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct node_host* FUNC3 (char*,int,int) ; 
 struct node_host* FUNC4 (char*,int) ; 
 struct node_host* FUNC5 (char const*,int) ; 
 struct node_host* FUNC6 (char*,int) ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC10 (char const*) ; 
 char* FUNC11 (char const*,char) ; 
 int FUNC12 (char*,char**,int /*<<< orphan*/ ) ; 

struct node_host *
FUNC13(const char *s)
{
	struct node_host	*h = NULL;
	int			 mask, v4mask, v6mask, cont = 1;
	char			*p, *q, *ps;

	if ((p = FUNC11(s, '/')) != NULL) {
		mask = FUNC12(p+1, &q, 0);
		if (!q || *q || mask > 128 || q == (p+1)) {
			FUNC1(stderr, "invalid netmask '%s'\n", p);
			return (NULL);
		}
		if ((ps = FUNC7(FUNC10(s) - FUNC10(p) + 1)) == NULL)
			FUNC0(1, "host: malloc");
		FUNC9(ps, s, FUNC10(s) - FUNC10(p) + 1);
		v4mask = v6mask = mask;
	} else {
		if ((ps = FUNC8(s)) == NULL)
			FUNC0(1, "host: strdup");
		v4mask = 32;
		v6mask = 128;
		mask = -1;
	}

	/* interface with this name exists? */
	if (cont && (h = FUNC4(ps, mask)) != NULL)
		cont = 0;

	/* IPv4 address? */
	if (cont && (h = FUNC5(s, mask)) != NULL)
		cont = 0;

	/* IPv6 address? */
	if (cont && (h = FUNC6(ps, v6mask)) != NULL)
		cont = 0;

	/* dns lookup */
	if (cont && (h = FUNC3(ps, v4mask, v6mask)) != NULL)
		cont = 0;
	FUNC2(ps);

	if (h == NULL || cont == 1) {
		FUNC1(stderr, "no IP address found for %s\n", s);
		return (NULL);
	}
	return (h);
}