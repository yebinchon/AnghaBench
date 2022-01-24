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

/* Variables and functions */
 int YPERR_NODOM ; 
 char* _yp_domain ; 
 scalar_t__ FUNC0 (char*,int) ; 

__attribute__((used)) static int
FUNC1(char **domp)
{
	*domp = NULL;
	if (_yp_domain[0] == '\0')
		if (FUNC0(_yp_domain, sizeof _yp_domain))
			return (YPERR_NODOM);
	*domp = _yp_domain;
	return (0);
}