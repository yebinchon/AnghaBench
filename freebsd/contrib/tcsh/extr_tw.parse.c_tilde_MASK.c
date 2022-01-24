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
struct Strbuf {int len; char* s; } ;
typedef  int Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*) ; 
 int* FUNC2 (int*,int) ; 
 int* FUNC3 (int*) ; 
 int* FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

__attribute__((used)) static int
FUNC6(struct Strbuf *new, Char *old)
{
    Char *o, *p;

    new->len = 0;
    switch (old[0]) {
    case '~': {
	Char *name, *home;

	old++;
	for (o = old; *o && *o != '/'; o++)
	    continue;
	name = FUNC2(old, o - old);
	home = FUNC3(name);
	FUNC5(name);
	if (home == NULL)
	    goto err;
	FUNC0(new, home);
	FUNC5(home);
	/* If the home directory expands to "/", we do
	 * not want to create "//" by appending a slash from o.
	 */
	if (new->s[0] == '/' && new->len == 1 && *o == '/')
	    ++o;
	FUNC0(new, o);
	break;
    }

    case '=':
	if ((p = FUNC4(old)) == NULL)
	    goto err;
	if (p != old) {
	    FUNC0(new, p);
	    FUNC5(p);
	    break;
	}
	/*FALLTHROUGH*/

    default:
	FUNC0(new, old);
	break;
    }
    FUNC1(new);
    return 0;

 err:
    FUNC1(new);
    return -1;
}