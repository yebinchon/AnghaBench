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
typedef  int sldns_rdf_type ;

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
 int LDNS_WIREPARSE_ERR_GENERAL ; 
 int LDNS_WIREPARSE_ERR_NOT_IMPL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC13 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC15 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC16 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC17 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC18 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC19 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC20 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC21 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC22 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC23 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC24 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC25 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC26 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC27 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC28 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC29 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC30 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC31 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC32 (char const*,int /*<<< orphan*/ *,size_t*) ; 

int FUNC33(const char* str, uint8_t* rd, size_t* len,
	sldns_rdf_type rdftype)
{
	switch (rdftype) {
	case LDNS_RDF_TYPE_DNAME:
		return FUNC9(str, rd, len);
	case LDNS_RDF_TYPE_INT8:
		return FUNC18(str, rd, len);
	case LDNS_RDF_TYPE_INT16:
		return FUNC15(str, rd, len);
	case LDNS_RDF_TYPE_INT32:
		return FUNC17(str, rd, len);
	case LDNS_RDF_TYPE_A:
		return FUNC0(str, rd, len);
	case LDNS_RDF_TYPE_AAAA:
		return FUNC1(str, rd, len);
	case LDNS_RDF_TYPE_STR:
		return FUNC26(str, rd, len);
	case LDNS_RDF_TYPE_APL:
		return FUNC3(str, rd, len);
	case LDNS_RDF_TYPE_B64:
		return FUNC6(str, rd, len);
	case LDNS_RDF_TYPE_B32_EXT:
		return FUNC5(str, rd, len);
	case LDNS_RDF_TYPE_HEX:
		return FUNC12(str, rd, len);
	case LDNS_RDF_TYPE_NSEC:
		return FUNC24(str, rd, len);
	case LDNS_RDF_TYPE_TYPE:
		return FUNC31(str, rd, len);
	case LDNS_RDF_TYPE_CLASS:
		return FUNC8(str, rd, len);
	case LDNS_RDF_TYPE_CERT_ALG:
		return FUNC7(str, rd, len);
	case LDNS_RDF_TYPE_ALG:
		return FUNC2(str, rd, len);
	case LDNS_RDF_TYPE_TIME:
		return FUNC28(str, rd, len);
	case LDNS_RDF_TYPE_PERIOD:
		return FUNC25(str, rd, len);
	case LDNS_RDF_TYPE_TSIGTIME:
		return FUNC30(str, rd, len);
	case LDNS_RDF_TYPE_LOC:
		return FUNC20(str, rd, len);
	case LDNS_RDF_TYPE_WKS:
		return FUNC32(str, rd, len);
	case LDNS_RDF_TYPE_NSAP:
		return FUNC22(str, rd, len);
	case LDNS_RDF_TYPE_ATMA:
		return FUNC4(str, rd, len);
	case LDNS_RDF_TYPE_IPSECKEY:
		return FUNC19(str, rd, len);
	case LDNS_RDF_TYPE_NSEC3_SALT:
		return FUNC23(str, rd, len);
	case LDNS_RDF_TYPE_NSEC3_NEXT_OWNER:
		return FUNC5(str, rd, len);
	case LDNS_RDF_TYPE_ILNP64:
		return FUNC14(str, rd, len);
	case LDNS_RDF_TYPE_EUI48:
		return FUNC10(str, rd, len);
	case LDNS_RDF_TYPE_EUI64:
		return FUNC11(str, rd, len);
	case LDNS_RDF_TYPE_TAG:
		return FUNC27(str, rd, len);
	case LDNS_RDF_TYPE_LONG_STR:
		return FUNC21(str, rd, len);
	case LDNS_RDF_TYPE_TSIGERROR:
		return FUNC29(str, rd, len);
	case LDNS_RDF_TYPE_HIP:
		return FUNC13(str, rd, len);
	case LDNS_RDF_TYPE_INT16_DATA:
		return FUNC16(str, rd, len);
	case LDNS_RDF_TYPE_UNKNOWN:
	case LDNS_RDF_TYPE_SERVICE:
		return LDNS_WIREPARSE_ERR_NOT_IMPL;
	case LDNS_RDF_TYPE_NONE:
	default:
		break;
	}
	return LDNS_WIREPARSE_ERR_GENERAL;
}