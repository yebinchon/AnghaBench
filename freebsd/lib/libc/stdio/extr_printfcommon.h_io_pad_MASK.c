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
struct io_state {int dummy; } ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int PADSIZE ; 
 scalar_t__ FUNC0 (struct io_state*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC1(struct io_state *iop, int howmany, const CHAR * __restrict with,
		locale_t locale)
{
	int n;

	while (howmany > 0) {
		n = (howmany >= PADSIZE) ? PADSIZE : howmany;
		if (FUNC0(iop, with, n, locale))
			return (-1);
		howmany -= n;
	}
	return (0);
}