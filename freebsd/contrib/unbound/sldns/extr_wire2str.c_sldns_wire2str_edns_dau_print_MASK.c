#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int name; } ;
typedef  TYPE_1__ sldns_lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  sldns_algorithms ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char**,size_t*,char*,int) ; 

int FUNC2(char** s, size_t* sl, uint8_t* data,
	size_t len)
{
	sldns_lookup_table *lt;
	size_t i;
	int w = 0;
	for(i=0; i<len; i++) {
		lt = FUNC0(sldns_algorithms, (int)data[i]);
		if(lt && lt->name)
			w += FUNC1(s, sl, " %s", lt->name);
		else 	w += FUNC1(s, sl, " %d", (int)data[i]);
	}
	return w;
}