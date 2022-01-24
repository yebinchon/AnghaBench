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
struct mbdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mbdata*,char const*,int) ; 
 int FUNC1 (struct mbdata*,int) ; 
 int FUNC2 (char const*) ; 

int 
FUNC3(struct mbdata *mbp, const char *s)
{
	int error, len = FUNC2(s);

	if (len > 255) {
		len = 255;
	}
	if ((error = FUNC1(mbp, len)) != 0)
		return error;
	return FUNC0(mbp, s, len);
}