#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* decode ) (int /*<<< orphan*/ ,char*,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  app_data ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* mech ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 

int
FUNC7(char *s, int level)
{
    int len;
    char *buf;
    int return_code;

    buf = FUNC2(FUNC5(s));
    len = FUNC0(s + 4, buf); /* XXX */

    len = (*mech->decode)(app_data, buf, len, level);
    if(len < 0)
	return -1;

    buf[len] = '\0';

    if(buf[3] == '-')
	return_code = 0;
    else
	FUNC3(buf, "%d", &return_code);
    if(buf[len-1] == '\n')
	buf[len-1] = '\0';
    FUNC4(s, buf);
    FUNC1(buf);
    return return_code;
}