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
typedef  char uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (char**,size_t*,char*,size_t) ; 
 scalar_t__ FUNC2 (char**,size_t*,char*,...) ; 

int FUNC3(char** s, size_t* sl, uint8_t* data,
	size_t len)
{
	int w = 0;
	size_t i, printed=0;
	w += FUNC1(s, sl, data, len);
	for(i=0; i<len; i++) {
		if(FUNC0((unsigned char)data[i]) || data[i] == '\t') {
			if(!printed) {
				w += FUNC2(s, sl, " (");
				printed = 1;
			}
			w += FUNC2(s, sl, "%c", (char)data[i]);
		}
	}
	if(printed)
		w += FUNC2(s, sl, ")");
	return w;
}