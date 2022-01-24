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
typedef  int /*<<< orphan*/  des_key_schedule ;
typedef  scalar_t__ DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char*) ; 

void FUNC3(unsigned char *input, unsigned char *output, 
		     des_key_schedule ks, int enc)
{
	register DES_LONG l;
	DES_LONG ll[2];
	const unsigned char *in = input;
	unsigned char *out = output;

	FUNC0(in,l); ll[0]=l;
	FUNC0(in,l); ll[1]=l;
	FUNC1(ll,ks,enc);
	l=ll[0]; FUNC2(l,out);
	l=ll[1]; FUNC2(l,out);
	l=ll[0]=ll[1]=0;
}