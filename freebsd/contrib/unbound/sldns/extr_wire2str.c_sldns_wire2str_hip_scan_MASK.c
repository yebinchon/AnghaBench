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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int FUNC2 (char**,size_t*,char*,...) ; 
 scalar_t__ FUNC3 (scalar_t__**,size_t*,char**,size_t*,scalar_t__) ; 

int FUNC4(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	int w;
	uint8_t algo, hitlen;
	uint16_t pklen;

	/* read lengths */
	if(*dl < 4)
		return -1;
	hitlen = (*d)[0];
	algo = (*d)[1];
	pklen = FUNC1((*d)+2);
	if(*dl < (size_t)4 + (size_t)hitlen + (size_t)pklen)
		return -1;

	/* write: algo hit pubkey */
	w = FUNC2(s, sl, "%u ", (unsigned)algo);
	w += FUNC0(s, sl, (*d)+4, hitlen);
	w += FUNC2(s, sl, " ");
	(*d)+=4+hitlen;
	(*dl)-= (4+hitlen);
	w += FUNC3(d, dl, s, sl, pklen);
	return w;
}