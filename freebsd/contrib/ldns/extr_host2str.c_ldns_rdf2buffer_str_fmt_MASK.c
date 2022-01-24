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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_output_format ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
#define  LDNS_RDF_TYPE_A 166 
#define  LDNS_RDF_TYPE_AAAA 165 
#define  LDNS_RDF_TYPE_ALG 164 
#define  LDNS_RDF_TYPE_APL 163 
#define  LDNS_RDF_TYPE_ATMA 162 
#define  LDNS_RDF_TYPE_B32_EXT 161 
#define  LDNS_RDF_TYPE_B64 160 
#define  LDNS_RDF_TYPE_CERTIFICATE_USAGE 159 
#define  LDNS_RDF_TYPE_CERT_ALG 158 
#define  LDNS_RDF_TYPE_CLASS 157 
#define  LDNS_RDF_TYPE_DNAME 156 
#define  LDNS_RDF_TYPE_EUI48 155 
#define  LDNS_RDF_TYPE_EUI64 154 
#define  LDNS_RDF_TYPE_HEX 153 
#define  LDNS_RDF_TYPE_HIP 152 
#define  LDNS_RDF_TYPE_ILNP64 151 
#define  LDNS_RDF_TYPE_INT16 150 
#define  LDNS_RDF_TYPE_INT16_DATA 149 
#define  LDNS_RDF_TYPE_INT32 148 
#define  LDNS_RDF_TYPE_INT8 147 
#define  LDNS_RDF_TYPE_IPSECKEY 146 
#define  LDNS_RDF_TYPE_LOC 145 
#define  LDNS_RDF_TYPE_LONG_STR 144 
#define  LDNS_RDF_TYPE_MATCHING_TYPE 143 
#define  LDNS_RDF_TYPE_NONE 142 
#define  LDNS_RDF_TYPE_NSAP 141 
#define  LDNS_RDF_TYPE_NSEC 140 
#define  LDNS_RDF_TYPE_NSEC3_NEXT_OWNER 139 
#define  LDNS_RDF_TYPE_NSEC3_SALT 138 
#define  LDNS_RDF_TYPE_PERIOD 137 
#define  LDNS_RDF_TYPE_SELECTOR 136 
#define  LDNS_RDF_TYPE_SERVICE 135 
#define  LDNS_RDF_TYPE_STR 134 
#define  LDNS_RDF_TYPE_TAG 133 
#define  LDNS_RDF_TYPE_TIME 132 
#define  LDNS_RDF_TYPE_TSIGTIME 131 
#define  LDNS_RDF_TYPE_TYPE 130 
#define  LDNS_RDF_TYPE_UNKNOWN 129 
#define  LDNS_RDF_TYPE_WKS 128 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC33 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static ldns_status
FUNC34(ldns_buffer *buffer,
		const ldns_output_format* fmt, const ldns_rdf *rdf)
{
	ldns_status res = LDNS_STATUS_OK;

	/*ldns_buffer_printf(buffer, "%u:", ldns_rdf_get_type(rdf));*/
	if (rdf) {
		switch(FUNC33(rdf)) {
		case LDNS_RDF_TYPE_NONE:
			break;
		case LDNS_RDF_TYPE_DNAME:
			res = FUNC9(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_INT8: /* Don't output mnemonics for these */
		case LDNS_RDF_TYPE_ALG:
		case LDNS_RDF_TYPE_CERTIFICATE_USAGE:
		case LDNS_RDF_TYPE_SELECTOR:
		case LDNS_RDF_TYPE_MATCHING_TYPE:
			res = FUNC18(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_INT16:
			res = FUNC15(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_INT32:
			res = FUNC17(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_PERIOD:
			res = FUNC25(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_TSIGTIME:
			res = FUNC29(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_A:
			res = FUNC1(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_AAAA:
			res = FUNC2(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_STR:
			res = FUNC26(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_APL:
			res = FUNC3(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_B32_EXT:
			res = FUNC5(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_B64:
			res = FUNC6(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_HEX:
			res = FUNC12(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_NSEC:
			res = FUNC24(buffer, fmt, rdf);
			break;
		case LDNS_RDF_TYPE_NSEC3_SALT:
			res = FUNC23(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_TYPE:
			res = FUNC30(buffer, fmt, rdf);
			break;
		case LDNS_RDF_TYPE_CLASS:
			res = FUNC8(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_CERT_ALG:
			res = FUNC7(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_UNKNOWN:
			res = FUNC31(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_TIME:
			res = FUNC28(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_HIP:
			res = FUNC13(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_LOC:
			res = FUNC20(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_WKS:
		case LDNS_RDF_TYPE_SERVICE:
			res = FUNC32(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_NSAP:
			res = FUNC22(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_ATMA:
			res = FUNC4(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_IPSECKEY:
			res = FUNC19(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_INT16_DATA:
			res = FUNC16(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_NSEC3_NEXT_OWNER:
			res = FUNC5(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_ILNP64:
			res = FUNC14(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_EUI48:
			res = FUNC10(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_EUI64:
			res = FUNC11(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_TAG:
			res = FUNC27(buffer, rdf);
			break;
		case LDNS_RDF_TYPE_LONG_STR:
			res = FUNC21(buffer, rdf);
			break;
		}
	} else {
		/** This will write mangled RRs */
		FUNC0(buffer, "(null) ");
		res = LDNS_STATUS_ERR;
	}
	return res;
}