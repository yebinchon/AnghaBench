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
typedef  size_t uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,size_t*,char*,...) ; 

int FUNC2(uint8_t** d, size_t* dlen, char** s, size_t* slen,
	uint8_t* pkt, size_t pktlen)
{
	int w = 0;
	/* spool labels onto the string, use compression if its there */
	uint8_t* pos = *d;
	unsigned i, counter=0;
	const unsigned maxcompr = 1000; /* loop detection, max compr ptrs */
	int in_buf = 1;
	if(*dlen == 0) return FUNC1(s, slen, "ErrorMissingDname");
	if(*pos == 0) {
		(*d)++;
		(*dlen)--;
		return FUNC1(s, slen, ".");
	}
	while(*pos) {
		/* read label length */
		uint8_t labellen = *pos++;
		if(in_buf) { (*d)++; (*dlen)--; }

		/* find out what sort of label we have */
		if((labellen&0xc0) == 0xc0) {
			/* compressed */
			uint16_t target = 0;
			if(in_buf && *dlen == 0)
				return w + FUNC1(s, slen,
					"ErrorPartialDname");
			else if(!in_buf && pos+1 > pkt+pktlen)
				return w + FUNC1(s, slen,
					"ErrorPartialDname");
			target = ((labellen&0x3f)<<8) | *pos;
			if(in_buf) { (*d)++; (*dlen)--; }
			/* move to target, if possible */
			if(!pkt || target >= pktlen)
				return w + FUNC1(s, slen,
					"ErrorComprPtrOutOfBounds");
			if(counter++ > maxcompr)
				return w + FUNC1(s, slen,
					"ErrorComprPtrLooped");
			in_buf = 0;
			pos = pkt+target;
			continue;
		} else if((labellen&0xc0)) {
			/* notimpl label type */
			w += FUNC1(s, slen,
				"ErrorLABELTYPE%xIsUnknown",
				(int)(labellen&0xc0));
			return w;
		}

		/* spool label characters, end with '.' */
		if(in_buf && *dlen < (size_t)labellen)
			labellen = (uint8_t)*dlen;
		else if(!in_buf && pos+(size_t)labellen > pkt+pktlen)
			labellen = (uint8_t)(pkt + pktlen - pos);
		for(i=0; i<(unsigned)labellen; i++) {
			w += FUNC0(s, slen, *pos++);
		}
		if(in_buf) {
			(*d) += labellen;
			(*dlen) -= labellen;
			if(*dlen == 0) break;
		}
		w += FUNC1(s, slen, ".");
	}
	/* skip over final root label */
	if(in_buf && *dlen > 0) { (*d)++; (*dlen)--; }
	/* in case we printed no labels, terminate dname */
	if(w == 0) w += FUNC1(s, slen, ".");
	return w;
}