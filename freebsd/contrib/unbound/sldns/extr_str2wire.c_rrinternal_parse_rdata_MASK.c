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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  sldns_rr_descriptor ;
typedef  scalar_t__ sldns_rdf_type ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_HIP ; 
 scalar_t__ LDNS_RDF_TYPE_INT16_DATA ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_GENERAL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_PARENTHESIS ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_MISSING_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__,size_t,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const**,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *,size_t,size_t*,scalar_t__,scalar_t__,size_t,size_t,size_t,int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *,size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t*,int*,int*,size_t*,char const*,scalar_t__,size_t*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char*,size_t,int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,size_t,int*,int*,size_t*,char const*,scalar_t__,size_t*) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC11 (int /*<<< orphan*/  const*) ; 
 size_t FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC16(sldns_buffer* strbuf, char* token, size_t token_len,
	uint8_t* rr, size_t* rr_len, size_t dname_len, uint16_t rr_type,
	uint8_t* origin, size_t origin_len)
{
	const sldns_rr_descriptor *desc = FUNC9((uint16_t)rr_type);
	size_t r_cnt, r_min, r_max;
	size_t rr_cur_len = dname_len + 10, pre_data_pos, token_strlen;
	int was_unknown_rr_format = 0, parens = 0, status, quoted;
	const char* delimiters;
	sldns_rdf_type rdftype;
	/* a desc is always returned */
	if(!desc) return LDNS_WIREPARSE_ERR_GENERAL;
	r_max = FUNC11(desc);
	r_min = FUNC12(desc);
	/* robust check */
	if(rr_cur_len > *rr_len)
		return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
			FUNC7(strbuf));

	/* because number of fields can be variable, we can't rely on
	 * _maximum() only */
	for(r_cnt=0; r_cnt < r_max; r_cnt++) {
		rdftype = FUNC10(desc, r_cnt);
		delimiters = FUNC1(rdftype, r_cnt, r_max);
		quoted = FUNC2(strbuf, &delimiters, rdftype);

		if(!FUNC8(strbuf, token, token_len, &quoted,
			&parens, &pre_data_pos, delimiters, rdftype,
			&token_strlen))
			break;

		/* rfc3597 specifies that any type can be represented
		 * with \# method, which can contain spaces...
		 * it does specify size though... */

		/* unknown RR data */
		if(token_strlen>=2 && FUNC15(token, "\\#", 2) == 0 &&
			!quoted && (token_strlen == 2 || token[2]==' ')) {
			was_unknown_rr_format = 1;
			if((status=FUNC4(strbuf, token,
				token_len, rr, rr_len, &rr_cur_len, 
				pre_data_pos)) != 0)
				return status;
		} else if(token_strlen > 0 || quoted) {
			if(rdftype == LDNS_RDF_TYPE_HIP) {
				/* affix the HIT and PK fields, with a space */
				if(!FUNC5(strbuf, token,
					&token_len, &quoted, &parens,
					&pre_data_pos, delimiters,
					rdftype, &token_strlen))
					break;
				if(!FUNC5(strbuf, token,
					&token_len, &quoted, &parens,
					&pre_data_pos, delimiters,
					rdftype, &token_strlen))
					break;
			} else if(rdftype == LDNS_RDF_TYPE_INT16_DATA &&
				FUNC14(token, "0")!=0) {
				/* affix len and b64 fields */
				if(!FUNC5(strbuf, token,
					&token_len, &quoted, &parens,
					&pre_data_pos, delimiters,
					rdftype, &token_strlen))
					break;
			}

			/* normal RR */
			if((status=FUNC3(strbuf, token,
				token_len, rr, *rr_len, &rr_cur_len, rdftype,
				rr_type, r_cnt, r_max, dname_len, origin,
				origin_len)) != 0) {
				return status;
			}
		}
	}
	if(!was_unknown_rr_format && r_cnt+1 < r_min) {
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_MISSING_VALUE,
			FUNC7(strbuf));
	}
	while(parens != 0) {
		/* read remainder, must be "" */
		if(FUNC6(strbuf, token, "\n", token_len,
			&parens, " \t") == -1) {
			if(parens != 0)
				return FUNC0(LDNS_WIREPARSE_ERR_PARENTHESIS,
					FUNC7(strbuf));
			break;
		}
		if(FUNC14(token, "") != 0)
			return FUNC0(LDNS_WIREPARSE_ERR_PARENTHESIS,
				FUNC7(strbuf));
	}
	/* write rdata length */
	FUNC13(rr+dname_len+8, (uint16_t)(rr_cur_len-dname_len-10));
	*rr_len = rr_cur_len;
	return LDNS_WIREPARSE_ERR_OK;
}