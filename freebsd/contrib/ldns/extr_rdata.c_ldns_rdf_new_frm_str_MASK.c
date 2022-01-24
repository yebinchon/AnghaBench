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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf_type ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  LDNS_RDF_TYPE_A 164 
#define  LDNS_RDF_TYPE_AAAA 163 
#define  LDNS_RDF_TYPE_ALG 162 
#define  LDNS_RDF_TYPE_APL 161 
#define  LDNS_RDF_TYPE_ATMA 160 
#define  LDNS_RDF_TYPE_B32_EXT 159 
#define  LDNS_RDF_TYPE_B64 158 
#define  LDNS_RDF_TYPE_CERTIFICATE_USAGE 157 
#define  LDNS_RDF_TYPE_CERT_ALG 156 
#define  LDNS_RDF_TYPE_CLASS 155 
#define  LDNS_RDF_TYPE_DNAME 154 
#define  LDNS_RDF_TYPE_EUI48 153 
#define  LDNS_RDF_TYPE_EUI64 152 
#define  LDNS_RDF_TYPE_HEX 151 
#define  LDNS_RDF_TYPE_HIP 150 
#define  LDNS_RDF_TYPE_ILNP64 149 
#define  LDNS_RDF_TYPE_INT16 148 
#define  LDNS_RDF_TYPE_INT32 147 
#define  LDNS_RDF_TYPE_INT8 146 
#define  LDNS_RDF_TYPE_IPSECKEY 145 
#define  LDNS_RDF_TYPE_LOC 144 
#define  LDNS_RDF_TYPE_LONG_STR 143 
#define  LDNS_RDF_TYPE_MATCHING_TYPE 142 
#define  LDNS_RDF_TYPE_NONE 141 
#define  LDNS_RDF_TYPE_NSAP 140 
#define  LDNS_RDF_TYPE_NSEC 139 
#define  LDNS_RDF_TYPE_NSEC3_NEXT_OWNER 138 
#define  LDNS_RDF_TYPE_NSEC3_SALT 137 
#define  LDNS_RDF_TYPE_PERIOD 136 
#define  LDNS_RDF_TYPE_SELECTOR 135 
#define  LDNS_RDF_TYPE_SERVICE 134 
#define  LDNS_RDF_TYPE_STR 133 
#define  LDNS_RDF_TYPE_TAG 132 
#define  LDNS_RDF_TYPE_TIME 131 
#define  LDNS_RDF_TYPE_TYPE 130 
#define  LDNS_RDF_TYPE_UNKNOWN 129 
#define  LDNS_RDF_TYPE_WKS 128 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ **,char const*) ; 

ldns_rdf *
FUNC37(ldns_rdf_type type, const char *str)
{
	ldns_rdf *rdf = NULL;
	ldns_status status;

	switch (type) {
	case LDNS_RDF_TYPE_DNAME:
		status = FUNC12(&rdf, str);
		break;
	case LDNS_RDF_TYPE_INT8:
		status = FUNC20(&rdf, str);
		break;
	case LDNS_RDF_TYPE_INT16:
		status = FUNC18(&rdf, str);
		break;
	case LDNS_RDF_TYPE_INT32:
		status = FUNC19(&rdf, str);
		break;
	case LDNS_RDF_TYPE_A:
		status = FUNC2(&rdf, str);
		break;
	case LDNS_RDF_TYPE_AAAA:
		status = FUNC3(&rdf, str);
		break;
	case LDNS_RDF_TYPE_STR:
		status = FUNC31(&rdf, str);
		break;
	case LDNS_RDF_TYPE_APL:
		status = FUNC5(&rdf, str);
		break;
	case LDNS_RDF_TYPE_B64:
		status = FUNC8(&rdf, str);
		break;
	case LDNS_RDF_TYPE_B32_EXT:
		status = FUNC7(&rdf, str);
		break;
	case LDNS_RDF_TYPE_HEX:
		status = FUNC15(&rdf, str);
		break;
	case LDNS_RDF_TYPE_NSEC:
		status = FUNC26(&rdf, str);
		break;
	case LDNS_RDF_TYPE_TYPE:
		status = FUNC34(&rdf, str);
		break;
	case LDNS_RDF_TYPE_CLASS:
		status = FUNC11(&rdf, str);
		break;
	case LDNS_RDF_TYPE_CERT_ALG:
		status = FUNC9(&rdf, str);
		break;
	case LDNS_RDF_TYPE_ALG:
		status = FUNC4(&rdf, str);
		break;
	case LDNS_RDF_TYPE_UNKNOWN:
		status = FUNC35(&rdf, str);
		break;
	case LDNS_RDF_TYPE_TIME:
		status = FUNC33(&rdf, str);
		break;
	case LDNS_RDF_TYPE_PERIOD:
		status = FUNC28(&rdf, str);
		break;
	case LDNS_RDF_TYPE_HIP:
		status = FUNC16(&rdf, str);
		break;
	case LDNS_RDF_TYPE_SERVICE:
		status = FUNC30(&rdf, str);
		break;
	case LDNS_RDF_TYPE_LOC:
		status = FUNC22(&rdf, str);
		break;
	case LDNS_RDF_TYPE_WKS:
		status = FUNC36(&rdf, str);
		break;
	case LDNS_RDF_TYPE_NSAP:
		status = FUNC25(&rdf, str);
		break;
	case LDNS_RDF_TYPE_ATMA:
		status = FUNC6(&rdf, str);
		break;
	case LDNS_RDF_TYPE_IPSECKEY:
		status = FUNC21(&rdf, str);
		break;
	case LDNS_RDF_TYPE_NSEC3_SALT:
		status = FUNC27(&rdf, str);
		break;
	case LDNS_RDF_TYPE_NSEC3_NEXT_OWNER:
		status = FUNC7(&rdf, str);
		break;
	case LDNS_RDF_TYPE_ILNP64:
		status = FUNC17(&rdf, str);
		break;
	case LDNS_RDF_TYPE_EUI48:
		status = FUNC13(&rdf, str);
		break;
	case LDNS_RDF_TYPE_EUI64:
		status = FUNC14(&rdf, str);
		break;
	case LDNS_RDF_TYPE_TAG:
		status = FUNC32(&rdf, str);
		break;
	case LDNS_RDF_TYPE_LONG_STR:
		status = FUNC23(&rdf, str);
		break;
	case LDNS_RDF_TYPE_CERTIFICATE_USAGE:
		status = FUNC10(&rdf, str);
		break;
	case LDNS_RDF_TYPE_SELECTOR:
		status = FUNC29(&rdf, str);
		break;
	case LDNS_RDF_TYPE_MATCHING_TYPE:
		status = FUNC24(&rdf, str);
		break;
	case LDNS_RDF_TYPE_NONE:
	default:
		/* default default ??? */
		status = LDNS_STATUS_ERR;
		break;
	}
	if (LDNS_STATUS_OK == status) {
		FUNC1(rdf, type);
		return rdf;
	}
	if (rdf) {
		FUNC0(rdf);
	}
	return NULL;
}