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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,size_t*,char*,char*) ; 

int FUNC2(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	char buf[32];
	int w;
	if(*dl < 4) return -1;
	if(!FUNC0(AF_INET, *d, buf, (socklen_t)sizeof(buf)))
		return -1;
	w = FUNC1(s, sl, "%s", buf);
	(*d)+=4;
	(*dl)-=4;
	return w;
}