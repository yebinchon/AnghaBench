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
typedef  int uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,char*,...) ; 
 int FUNC1 (int**,size_t*,char**,size_t*) ; 
 int FUNC2 (int**,size_t*,char**,size_t*) ; 
 scalar_t__ FUNC3 (int**,size_t*,char**,size_t*,size_t) ; 
 int FUNC4 (int**,size_t*,char**,size_t*,int*,size_t) ; 

__attribute__((used)) static int FUNC5(uint8_t** d, size_t* dl,
	char** s, size_t* sl, uint8_t* pkt, size_t pktlen)
{
	/* http://www.ietf.org/internet-drafts/draft-ietf-ipseckey-rr-12.txt*/
	uint8_t precedence, gateway_type, algorithm;
	int w = 0;

	if(*dl < 3) return -1;
	precedence = (*d)[0];
	gateway_type = (*d)[1];
	algorithm = (*d)[2];
	if(gateway_type > 3)
		return -1; /* unknown */
	(*d)+=3;
	(*dl)-=3;
	w += FUNC0(s, sl, "%d %d %d ",
		(int)precedence, (int)gateway_type, (int)algorithm);

	switch(gateway_type) {
	case 0: /* no gateway */
		w += FUNC0(s, sl, ".");
		break;
	case 1: /* ip4 */
		w += FUNC1(d, dl, s, sl);
		break;
	case 2: /* ip6 */
		w += FUNC2(d, dl, s, sl);
		break;
	case 3: /* dname */
		w += FUNC4(d, dl, s, sl, pkt, pktlen);
		break;
	default: /* unknown */
		return -1;
	}

	if(*dl < 1)
		return -1;
	w += FUNC0(s, sl, " ");
	w += FUNC3(d, dl, s, sl, *dl);
	return w;
}