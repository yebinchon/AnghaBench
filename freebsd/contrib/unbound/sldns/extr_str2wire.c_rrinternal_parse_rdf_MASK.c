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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sldns_rdf_type ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
#define  LDNS_RDF_TYPE_B64 130 
#define  LDNS_RDF_TYPE_DNAME 129 
#define  LDNS_RDF_TYPE_HEX 128 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 size_t FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(sldns_buffer* strbuf, char* token, size_t token_len,
	uint8_t* rr, size_t rr_len, size_t* rr_cur_len, sldns_rdf_type rdftype,
	uint16_t rr_type, size_t r_cnt, size_t r_max, size_t dname_len,
	uint8_t* origin, size_t origin_len)
{
	size_t len;
	int status;

	switch(rdftype) {
	case LDNS_RDF_TYPE_DNAME:
		/* check if the origin should be used or concatenated */
		if(FUNC7(token, "@") == 0) {
			uint8_t* tocopy;
			size_t copylen;
			if(origin) {
				copylen = origin_len;
				tocopy = origin;
			} else if(rr_type == LDNS_RR_TYPE_SOA) {
				copylen = dname_len;
				tocopy = rr; /* copy rr owner name */
			} else {
				copylen = 1;
				tocopy = (uint8_t*)"\0";
			}
			if((*rr_cur_len) + copylen > rr_len)
				return FUNC0(
					LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
					FUNC4(strbuf));
			FUNC2(rr+*rr_cur_len, tocopy, copylen);
			(*rr_cur_len) += copylen;
		} else {
			size_t dlen = rr_len - (*rr_cur_len);
			int s = FUNC5(token,
				rr+*rr_cur_len, &dlen, origin, origin_len);
			if(s) return FUNC1(s,
				FUNC4(strbuf)-FUNC8(token));
			(*rr_cur_len) += dlen;
		}
		return LDNS_WIREPARSE_ERR_OK;

	case LDNS_RDF_TYPE_HEX:
	case LDNS_RDF_TYPE_B64:
		/* When this is the last rdata field, then the
		 * rest should be read in (cause then these
		 * rdf types may contain spaces). */
		if(r_cnt == r_max - 1) {
			size_t tlen = FUNC8(token);
			(void)FUNC3(strbuf, token+tlen, "\n",
				token_len - tlen);
		}
		break;
	default:
		break;
	}

	len = rr_len - (*rr_cur_len);
	if((status=FUNC6(token, rr+(*rr_cur_len), &len,
		rdftype)) != 0)
		return FUNC1(status,
			FUNC4(strbuf)-FUNC8(token));
	*rr_cur_len += len;
	return LDNS_WIREPARSE_ERR_OK;
}