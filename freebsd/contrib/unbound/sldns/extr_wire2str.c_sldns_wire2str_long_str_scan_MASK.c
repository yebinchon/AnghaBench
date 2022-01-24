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

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,char*) ; 
 scalar_t__ FUNC1 (char**,size_t*,int /*<<< orphan*/ ) ; 

int FUNC2(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	size_t i;
	int w = 0;
	w += FUNC0(s, sl, "\"");
	for(i=0; i<*dl; i++)
		w += FUNC1(s, sl, (*d)[i]);
	w += FUNC0(s, sl, "\"");
	(*d)+=*dl;
	(*dl)=0;
	return w;
}