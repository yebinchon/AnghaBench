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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int name; } ;
typedef  TYPE_1__ sldns_lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  sldns_cert_algorithms ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char**,size_t*,char*,int) ; 

int FUNC3(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	sldns_lookup_table *lt;
	int data, w;
	if(*dl < 2) return -1;
	data = (int)FUNC1(*d);
	lt = FUNC0(sldns_cert_algorithms, data);
	if(lt && lt->name)
		w = FUNC2(s, sl, "%s", lt->name);
	else 	w = FUNC2(s, sl, "%d", data);
	(*dl)-=2;
	(*d)+=2;
	return w;
}