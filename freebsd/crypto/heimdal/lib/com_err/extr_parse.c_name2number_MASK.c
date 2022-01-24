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
 char* FUNC0 (char const*,char const) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static long
FUNC3(const char *str)
{
    const char *p;
    long num = 0;
    const char *x = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	"abcdefghijklmnopqrstuvwxyz0123456789_";
    if(FUNC1(str) > 4) {
	FUNC2("table name too long");
	return 0;
    }
    for(p = str; *p; p++){
	char *q = FUNC0(x, *p);
	if(q == NULL) {
	    FUNC2("invalid character in table name");
	    return 0;
	}
	num = (num << 6) + (q - x) + 1;
    }
    num <<= 8;
    if(num > 0x7fffffff)
	num = -(0xffffffff - num + 1);
    return num;
}