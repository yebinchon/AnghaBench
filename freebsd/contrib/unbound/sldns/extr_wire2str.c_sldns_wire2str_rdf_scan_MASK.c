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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
#define  LDNS_RDF_TYPE_A 164 
#define  LDNS_RDF_TYPE_AAAA 163 
#define  LDNS_RDF_TYPE_ALG 162 
#define  LDNS_RDF_TYPE_APL 161 
#define  LDNS_RDF_TYPE_ATMA 160 
#define  LDNS_RDF_TYPE_B32_EXT 159 
#define  LDNS_RDF_TYPE_B64 158 
#define  LDNS_RDF_TYPE_CERT_ALG 157 
#define  LDNS_RDF_TYPE_CLASS 156 
#define  LDNS_RDF_TYPE_DNAME 155 
#define  LDNS_RDF_TYPE_EUI48 154 
#define  LDNS_RDF_TYPE_EUI64 153 
#define  LDNS_RDF_TYPE_HEX 152 
#define  LDNS_RDF_TYPE_HIP 151 
#define  LDNS_RDF_TYPE_ILNP64 150 
#define  LDNS_RDF_TYPE_INT16 149 
#define  LDNS_RDF_TYPE_INT16_DATA 148 
#define  LDNS_RDF_TYPE_INT32 147 
#define  LDNS_RDF_TYPE_INT8 146 
#define  LDNS_RDF_TYPE_IPSECKEY 145 
#define  LDNS_RDF_TYPE_LOC 144 
#define  LDNS_RDF_TYPE_LONG_STR 143 
#define  LDNS_RDF_TYPE_NONE 142 
#define  LDNS_RDF_TYPE_NSAP 141 
#define  LDNS_RDF_TYPE_NSEC 140 
#define  LDNS_RDF_TYPE_NSEC3_NEXT_OWNER 139 
#define  LDNS_RDF_TYPE_NSEC3_SALT 138 
#define  LDNS_RDF_TYPE_PERIOD 137 
#define  LDNS_RDF_TYPE_SERVICE 136 
#define  LDNS_RDF_TYPE_STR 135 
#define  LDNS_RDF_TYPE_TAG 134 
#define  LDNS_RDF_TYPE_TIME 133 
#define  LDNS_RDF_TYPE_TSIGERROR 132 
#define  LDNS_RDF_TYPE_TSIGTIME 131 
#define  LDNS_RDF_TYPE_TYPE 130 
#define  LDNS_RDF_TYPE_UNKNOWN 129 
#define  LDNS_RDF_TYPE_WKS 128 
 int FUNC0 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC6 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC9 (int /*<<< orphan*/ **,size_t*,char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC11 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC12 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC13 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC14 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC15 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC16 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC17 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC18 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC19 (int /*<<< orphan*/ **,size_t*,char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC20 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC21 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC22 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC23 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC24 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC25 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC26 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC27 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC28 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC29 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC30 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC31 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC32 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC33 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 

int FUNC34(uint8_t** d, size_t* dlen, char** s, size_t* slen,
	int rdftype, uint8_t* pkt, size_t pktlen)
{
	if(*dlen == 0) return 0;
	switch(rdftype) {
	case LDNS_RDF_TYPE_NONE:
		return 0;
	case LDNS_RDF_TYPE_DNAME:
		return FUNC9(d, dlen, s, slen, pkt, pktlen);
	case LDNS_RDF_TYPE_INT8:
		return FUNC18(d, dlen, s, slen);
	case LDNS_RDF_TYPE_INT16:
		return FUNC16(d, dlen, s, slen);
	case LDNS_RDF_TYPE_INT32:
		return FUNC17(d, dlen, s, slen);
	case LDNS_RDF_TYPE_PERIOD:
		return FUNC25(d, dlen, s, slen);
	case LDNS_RDF_TYPE_TSIGTIME:
		return FUNC30(d, dlen, s, slen);
	case LDNS_RDF_TYPE_A:
		return FUNC0(d, dlen, s, slen);
	case LDNS_RDF_TYPE_AAAA:
		return FUNC1(d, dlen, s, slen);
	case LDNS_RDF_TYPE_STR:
		return FUNC26(d, dlen, s, slen);
	case LDNS_RDF_TYPE_APL:
		return FUNC3(d, dlen, s, slen);
	case LDNS_RDF_TYPE_B32_EXT:
		return FUNC5(d, dlen, s, slen);
	case LDNS_RDF_TYPE_B64:
		return FUNC6(d, dlen, s, slen);
	case LDNS_RDF_TYPE_HEX:
		return FUNC12(d, dlen, s, slen);
	case LDNS_RDF_TYPE_NSEC:
		return FUNC24(d, dlen, s, slen);
	case LDNS_RDF_TYPE_NSEC3_SALT:
		return FUNC23(d, dlen, s, slen);
	case LDNS_RDF_TYPE_TYPE:
		return FUNC31(d, dlen, s, slen);
	case LDNS_RDF_TYPE_CLASS:
		return FUNC8(d, dlen, s, slen);
	case LDNS_RDF_TYPE_CERT_ALG:
		return FUNC7(d, dlen, s, slen);
	case LDNS_RDF_TYPE_ALG:
		return FUNC2(d, dlen, s, slen);
	case LDNS_RDF_TYPE_UNKNOWN:
		return FUNC32(d, dlen, s, slen);
	case LDNS_RDF_TYPE_TIME:
		return FUNC28(d, dlen, s, slen);
	case LDNS_RDF_TYPE_LOC:
		return FUNC20(d, dlen, s, slen);
	case LDNS_RDF_TYPE_WKS:
	case LDNS_RDF_TYPE_SERVICE:
		return FUNC33(d, dlen, s, slen);
	case LDNS_RDF_TYPE_NSAP:
		return FUNC22(d, dlen, s, slen);
	case LDNS_RDF_TYPE_ATMA:
		return FUNC4(d, dlen, s, slen);
	case LDNS_RDF_TYPE_IPSECKEY:
		return FUNC19(d, dlen, s, slen, pkt,
			pktlen);
	case LDNS_RDF_TYPE_HIP:
		return FUNC13(d, dlen, s, slen);
	case LDNS_RDF_TYPE_INT16_DATA:
		return FUNC15(d, dlen, s, slen);
	case LDNS_RDF_TYPE_NSEC3_NEXT_OWNER:
		return FUNC5(d, dlen, s, slen);
	case LDNS_RDF_TYPE_ILNP64:
		return FUNC14(d, dlen, s, slen);
	case LDNS_RDF_TYPE_EUI48:
		return FUNC10(d, dlen, s, slen);
	case LDNS_RDF_TYPE_EUI64:
		return FUNC11(d, dlen, s, slen);
	case LDNS_RDF_TYPE_TAG:
		return FUNC27(d, dlen, s, slen);
	case LDNS_RDF_TYPE_LONG_STR:
		return FUNC21(d, dlen, s, slen);
	case LDNS_RDF_TYPE_TSIGERROR:
		return FUNC29(d, dlen, s, slen);
	}
	/* unknown rdf type */
	return -1;
}