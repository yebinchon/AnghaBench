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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int EEXIST ; 
 int FUNC0 (char const*,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,char const*) ; 

__attribute__((used)) static int
FUNC2(const char *to, const char *from, const u_char *tbl)
{
	int error;

	error = FUNC0(to, from, tbl);
	if (error && error != EEXIST) {
		FUNC1("can not setup kernel iconv table (%s:%s)", error,
		    from, to);
		return error;
	}
	return 0;
}