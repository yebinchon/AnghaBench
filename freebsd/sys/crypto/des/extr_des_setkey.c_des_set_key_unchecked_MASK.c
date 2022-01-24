#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* des_key_schedule ;
typedef  size_t d ;
typedef  size_t c ;
struct TYPE_4__ {int* deslong; } ;
struct TYPE_5__ {TYPE_1__ ks; } ;
typedef  int DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int ITERATIONS ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int) ; 
 int** des_skb ; 

void FUNC4(const unsigned char *key, des_key_schedule schedule)
{
	static int shifts2[16]={0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,0};
	DES_LONG c,d,t,s,t2;
	const unsigned char *in;
	DES_LONG *k;
	int i;

	k = &schedule->ks.deslong[0];
	in = key;

	FUNC3(in,c);
	FUNC3(in,d);

	/* do PC1 in 47 simple operations :-)
	 * Thanks to John Fletcher (john_fletcher@lccmail.ocf.llnl.gov)
	 * for the inspiration. :-) */
	FUNC1 (d,c,t,4,0x0f0f0f0fL);
	FUNC0(c,t,-2,0xcccc0000L);
	FUNC0(d,t,-2,0xcccc0000L);
	FUNC1 (d,c,t,1,0x55555555L);
	FUNC1 (c,d,t,8,0x00ff00ffL);
	FUNC1 (d,c,t,1,0x55555555L);
	d=	(((d&0x000000ffL)<<16L)| (d&0x0000ff00L)     |
		 ((d&0x00ff0000L)>>16L)|((c&0xf0000000L)>>4L));
	c&=0x0fffffffL;

	for (i=0; i<ITERATIONS; i++)
	{
		if (shifts2[i])
			{ c=((c>>2L)|(c<<26L)); d=((d>>2L)|(d<<26L)); }
		else
			{ c=((c>>1L)|(c<<27L)); d=((d>>1L)|(d<<27L)); }
		c&=0x0fffffffL;
		d&=0x0fffffffL;
		/* could be a few less shifts but I am to lazy at this
	 	* point in time to investigate */
		s=	des_skb[0][ (c    )&0x3f                ]|
			des_skb[1][((c>> 6L)&0x03)|((c>> 7L)&0x3c)]|
			des_skb[2][((c>>13L)&0x0f)|((c>>14L)&0x30)]|
			des_skb[3][((c>>20L)&0x01)|((c>>21L)&0x06) |
						  	((c>>22L)&0x38)];
		t=	des_skb[4][ (d    )&0x3f                ]|
			des_skb[5][((d>> 7L)&0x03)|((d>> 8L)&0x3c)]|
			des_skb[6][ (d>>15L)&0x3f                ]|
			des_skb[7][((d>>21L)&0x0f)|((d>>22L)&0x30)];

		/* table contained 0213 4657 */
		t2=((t<<16L)|(s&0x0000ffffL))&0xffffffffL;
		*(k++)=FUNC2(t2,30)&0xffffffffL;

		t2=((s>>16L)|(t&0xffff0000L));
		*(k++)=FUNC2(t2,26)&0xffffffffL;
	}
}