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
struct Strbuf {int dummy; } ;
typedef  int /*<<< orphan*/  const Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/  const*,char) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC4(const Char *path, struct Strbuf *dir, Char **name)
{
    Char *p;

    p = FUNC2(path, '/');
#ifdef WINNT_NATIVE
    if (p == NULL)
	p = Strrchr(path, ':');
#endif /* WINNT_NATIVE */
    if (p == NULL)
	*name = FUNC3(path);
    else {
	p++;
	*name = FUNC3(p);
	FUNC0(dir, path, p - path);
    }
    FUNC1(dir);
}