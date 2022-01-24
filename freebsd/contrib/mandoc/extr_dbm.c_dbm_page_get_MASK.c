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
struct dbm_page {char* name; char* sect; char* arch; char* desc; char* file; int /*<<< orphan*/  addr; } ;
typedef  size_t int32_t ;
struct TYPE_3__ {scalar_t__ file; scalar_t__ desc; scalar_t__ arch; scalar_t__ sect; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (scalar_t__) ; 
 size_t npages ; 
 TYPE_1__* pages ; 

struct dbm_page *
FUNC3(int32_t ip)
{
	static struct dbm_page	 res;

	FUNC0(ip >= 0);
	FUNC0(ip < npages);
	res.name = FUNC2(pages[ip].name);
	if (res.name == NULL)
		res.name = "(NULL)\0";
	res.sect = FUNC2(pages[ip].sect);
	if (res.sect == NULL)
		res.sect = "(NULL)\0";
	res.arch = pages[ip].arch ? FUNC2(pages[ip].arch) : NULL;
	res.desc = FUNC2(pages[ip].desc);
	if (res.desc == NULL)
		res.desc = "(NULL)";
	res.file = FUNC2(pages[ip].file);
	if (res.file == NULL)
		res.file = " (NULL)\0";
	res.addr = FUNC1(pages + ip);
	return &res;
}