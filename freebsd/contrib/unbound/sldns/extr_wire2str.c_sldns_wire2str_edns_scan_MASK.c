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
typedef  int uint16_t ;

/* Variables and functions */
 int LDNS_EDNS_MASK_DO_BIT ; 
 size_t LDNS_HEADER_SIZE ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ LDNS_RR_TYPE_OPT ; 
 scalar_t__ FUNC1 (char**,size_t*,scalar_t__*,int) ; 
 int FUNC2 (char*,scalar_t__**,size_t*,char**,size_t*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (char**,size_t*,char*,...) ; 

int FUNC5(uint8_t** data, size_t* data_len, char** str,
        size_t* str_len, uint8_t* pkt, size_t pktlen)
{
	int w = 0;
	uint8_t ext_rcode, edns_version;
	uint16_t udpsize, edns_bits, rdatalen;
	w += FUNC4(str, str_len, "; EDNS:");

	/* some input checks, domain name */
	if(*data_len < 1+10)
		return w + FUNC2("Error malformed 0x",
			data, data_len, str, str_len);
	if(*data[0] != 0) {
		return w + FUNC2("Error nonrootdname 0x",
			data, data_len, str, str_len);
	}
	(*data)++;
	(*data_len)--;

	/* check type and read fixed contents */
	if(FUNC3((*data)) != LDNS_RR_TYPE_OPT) {
		return w + FUNC2("Error nottypeOPT 0x",
			data, data_len, str, str_len);
	}
	udpsize = FUNC3((*data)+2);
	ext_rcode = (*data)[4];
	edns_version = (*data)[5];
	edns_bits = FUNC3((*data)+6);
	rdatalen = FUNC3((*data)+8);
	(*data)+=10;
	(*data_len)-=10;

	w += FUNC4(str, str_len, " version: %u;",
		(unsigned)edns_version);
	w += FUNC4(str, str_len, " flags:");
	if((edns_bits & LDNS_EDNS_MASK_DO_BIT))
		w += FUNC4(str, str_len, " do");
	/* the extended rcode is the value set, shifted four bits,
	 * and or'd with the original rcode */
	if(ext_rcode) {
		int rc = ((int)ext_rcode)<<4;
		if(pkt && pktlen >= LDNS_HEADER_SIZE)
			rc |= FUNC0(pkt);
		w += FUNC4(str, str_len, " ; ext-rcode: %d", rc);
	}
	w += FUNC4(str, str_len, " ; udp: %u", (unsigned)udpsize);

	if(rdatalen) {
		if((size_t)*data_len < rdatalen) {
			w += FUNC4(str, str_len,
				" ; Error EDNS rdata too short; ");
			rdatalen = (uint16_t)*data_len;
		}
		w += FUNC1(str, str_len, *data, rdatalen);
		(*data) += rdatalen;
		(*data_len) -= rdatalen;
	}
	w += FUNC4(str, str_len, "\n");
	return w;
}