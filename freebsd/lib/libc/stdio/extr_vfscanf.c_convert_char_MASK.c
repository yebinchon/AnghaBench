#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int _r; int _p; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 char* SUPPRESS_PTR ; 
 size_t FUNC0 (char*,int,int,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static __inline int
FUNC2(FILE *fp, char * p, int width)
{
	int n;

	if (p == SUPPRESS_PTR) {
		size_t sum = 0;
		for (;;) {
			if ((n = fp->_r) < width) {
				sum += n;
				width -= n;
				fp->_p += n;
				if (FUNC1(fp)) {
					if (sum == 0)
						return (-1);
					break;
				}
			} else {
				sum += width;
				fp->_r -= width;
				fp->_p += width;
				break;
			}
		}
		return (sum);
	} else {
		size_t r = FUNC0(p, 1, width, fp);

		if (r == 0)
			return (-1);
		return (r);
	}
}