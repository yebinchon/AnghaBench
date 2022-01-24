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
typedef  int /*<<< orphan*/  DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*) ; 

void FUNC4(unsigned char *input, unsigned char *output,
             des_key_schedule ks1, des_key_schedule ks2, des_key_schedule ks3,
             int enc)
{
	register DES_LONG l0,l1;
	DES_LONG ll[2];
	const unsigned char *in = input;
	unsigned char *out = output;
 
	FUNC0(in,l0); 
	FUNC0(in,l1);
	ll[0]=l0; 
	ll[1]=l1;

	if (enc)
		FUNC2(ll,ks1,ks2,ks3);
	else
		FUNC1(ll,ks1,ks2,ks3);

	l0=ll[0];
	l1=ll[1];
	FUNC3(l0,out);
	FUNC3(l1,out);
}