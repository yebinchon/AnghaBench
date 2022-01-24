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
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char const**,char*,char*,int) ; 

void
FUNC4(krb5_context contextp, const char *str)
{
    char p[128];

    while(FUNC3(&str, " \t", p, sizeof(p)) != -1) {
	if(FUNC2(p, "+") == 0)
	    FUNC1(contextp);
	else
	    FUNC0(contextp, p, 0);
    }
}