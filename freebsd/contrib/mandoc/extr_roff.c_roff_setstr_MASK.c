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
struct roff {int /*<<< orphan*/  rentab; int /*<<< orphan*/  strtab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t,char const*,size_t,int) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(struct roff *r, const char *name, const char *string,
	int append)
{
	size_t	 namesz;

	namesz = FUNC1(name);
	FUNC0(&r->strtab, name, namesz, string,
	    string ? FUNC1(string) : 0, append);
	FUNC0(&r->rentab, name, namesz, NULL, 0, 0);
}