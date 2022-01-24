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
typedef  unsigned int uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,char*) ; 
 scalar_t__ FUNC1 (char**,size_t*,unsigned int) ; 

int FUNC2(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	uint8_t* p = *d;
	size_t pl = *dl;
	unsigned i, bit, window, block_len;
	uint16_t t;
	int w = 0;
	
	/* check for errors */
	while(pl) {
		if(pl < 2) return -1;
		block_len = (unsigned)p[1];
		if(pl < 2+block_len) return -1;
		p += block_len+2;
		pl -= block_len+2;
	}

	/* do it */
	p = *d;
	pl = *dl;
	while(pl) {
		if(pl < 2) return -1; /* cannot happen */
		window = (unsigned)p[0];
		block_len = (unsigned)p[1];
		if(pl < 2+block_len) return -1; /* cannot happen */
		p += 2;
		for(i=0; i<block_len; i++) {
			if(p[i] == 0) continue;
			/* base type number for this octet */
			t = ((window)<<8) | (i << 3);
			for(bit=0; bit<8; bit++) {
				if((p[i]&(0x80>>bit))) {
					if(w) w += FUNC0(s, sl, " ");
					w += FUNC1(s, sl,
						t+bit);
				}
			}
		}
		p += block_len;
		pl -= block_len+2;
	}
	(*d) += *dl;
	(*dl) = 0;
	return w;
}