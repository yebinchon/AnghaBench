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
typedef  scalar_t__ BF_LONG ;
typedef  int /*<<< orphan*/  BF_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,scalar_t__) ; 

void FUNC4(const unsigned char *in, unsigned char *out,
	     BF_KEY *key, int encrypt)
	{
	BF_LONG l,d[2];

	FUNC3(in,l); d[0]=l;
	FUNC3(in,l); d[1]=l;
	if (encrypt)
		FUNC1(d,key);
	else
		FUNC0(d,key);
	l=d[0]; FUNC2(l,out);
	l=d[1]; FUNC2(l,out);
	l=d[0]=d[1]=0;
	}