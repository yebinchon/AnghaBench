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
struct spc {unsigned char flags; unsigned char mylevel; void* val; } ;
typedef  void* cc_t ;

/* Variables and functions */
 int NSLC ; 
 unsigned char SLC_ACK ; 
 unsigned char SLC_DEFAULT ; 
 size_t SLC_FLAGS ; 
 size_t SLC_FUNC ; 
 unsigned char SLC_LEVELBITS ; 
 unsigned char SLC_NOSUPPORT ; 
 size_t SLC_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 struct spc* spc_data ; 

void
FUNC5(unsigned char *cp, int len)
{
	struct spc *spcp;
	int func,level;

	FUNC3();

	for (; len >= 3; len -=3, cp +=3) {

		func = cp[SLC_FUNC];

		if (func == 0) {
			/*
			 * Client side: always ignore 0 function.
			 */
			continue;
		}
		if (func > NSLC) {
			if ((cp[SLC_FLAGS] & SLC_LEVELBITS) != SLC_NOSUPPORT)
				FUNC1(func, SLC_NOSUPPORT, 0);
			continue;
		}

		spcp = &spc_data[func];

		level = cp[SLC_FLAGS]&(SLC_LEVELBITS|SLC_ACK);

		if ((cp[SLC_VALUE] == (unsigned char)spcp->val) &&
		    ((level&SLC_LEVELBITS) == (spcp->flags&SLC_LEVELBITS))) {
			continue;
		}

		if (level == (SLC_DEFAULT|SLC_ACK)) {
			/*
			 * This is an error condition, the SLC_ACK
			 * bit should never be set for the SLC_DEFAULT
			 * level.  Our best guess to recover is to
			 * ignore the SLC_ACK bit.
			 */
			cp[SLC_FLAGS] &= ~SLC_ACK;
		}

		if (level == ((spcp->flags&SLC_LEVELBITS)|SLC_ACK)) {
			spcp->val = (cc_t)cp[SLC_VALUE];
			spcp->flags = cp[SLC_FLAGS];	/* include SLC_ACK */
			continue;
		}

		level &= ~SLC_ACK;

		if (level <= (spcp->mylevel&SLC_LEVELBITS)) {
			spcp->flags = cp[SLC_FLAGS]|SLC_ACK;
			spcp->val = (cc_t)cp[SLC_VALUE];
		}
		if (level == SLC_DEFAULT) {
			if ((spcp->mylevel&SLC_LEVELBITS) != SLC_DEFAULT)
				spcp->flags = spcp->mylevel;
			else
				spcp->flags = SLC_NOSUPPORT;
		}
		FUNC1(func, spcp->flags, spcp->val);
	}
	FUNC2();
	if (FUNC4())
		FUNC0(1);	/* set the  new character values */
}