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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PRINT_DEC_BUFSZ ; 
 int FUNC0 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char**,size_t*,int*,int,int,int,int,int,int,int,int,int,char*,int) ; 

__attribute__((used)) static void
FUNC2(char** at, size_t* left, int* ret, int value,
	int minw, int precision, int prgiven, int zeropad, int minus,
	int plus, int space)
{
	char buf[PRINT_DEC_BUFSZ];
	int negative = (value < 0);
	int zero = (value == 0);
	int len = FUNC0(buf, (int)sizeof(buf),
		(unsigned int)(negative?-value:value));
	FUNC1(at, left, ret, minw, precision, prgiven, zeropad, minus,
		plus, space, zero, negative, buf, len);
}