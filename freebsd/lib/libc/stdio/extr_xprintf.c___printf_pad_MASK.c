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
struct __printf_io {int dummy; } ;

/* Variables and functions */
 int PADSIZE ; 
 scalar_t__ FUNC0 (struct __printf_io*,char const*,int) ; 
 char* blanks ; 
 char* zeroes ; 

int
FUNC1(struct __printf_io *io, int howmany, int zero)
{
	int n;
	const char *with;
	int ret = 0;

	if (zero)
		with = zeroes;
	else
		with = blanks;

	if ((n = (howmany)) > 0) {
		while (n > PADSIZE) { 
			ret += FUNC0(io, with, PADSIZE);
			n -= PADSIZE;
		}
		ret += FUNC0(io, with, n);
	}
	return (ret);
}