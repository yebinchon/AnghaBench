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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 size_t LDNS_MAX_RDFLEN ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_GENERAL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_RDATA ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,size_t,size_t,size_t*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(sldns_buffer* strbuf, char* token, size_t token_len,
        uint8_t* rr, size_t* rr_len, size_t* rr_cur_len, size_t pre_data_pos)
{
	const char* delim = "\n\t ";
	size_t hex_data_size, cur_hex_data_size;
	/* go back to before \#
	 * and skip it while setting delimiters better
	 */
	FUNC6(strbuf, pre_data_pos);
	if(FUNC4(strbuf, token, delim, token_len) == -1)
		return LDNS_WIREPARSE_ERR_GENERAL; /* should not fail */
	/* read rdata octet length */
	if(FUNC4(strbuf, token, delim, token_len) == -1) {
		/* something goes very wrong here */
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_RDATA,
			FUNC5(strbuf));
	}
	hex_data_size = (size_t)FUNC2(token);
	if(hex_data_size > LDNS_MAX_RDFLEN || 
		*rr_cur_len + hex_data_size > *rr_len) {
		return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
			FUNC5(strbuf));
	}
	/* copy hex chars into hex str (2 chars per byte) */
	hex_data_size *= 2;
	cur_hex_data_size = 0;
	while(cur_hex_data_size < hex_data_size) {
		int status;
		ssize_t c = FUNC4(strbuf, token, delim, token_len);
		if((status = FUNC3(token, rr, *rr_len,
			*rr_cur_len, &cur_hex_data_size, hex_data_size)) != 0)
			return FUNC1(status,
				FUNC5(strbuf)-FUNC7(token));
		if(c == -1) {
			if(cur_hex_data_size != hex_data_size)
				return FUNC0(
					LDNS_WIREPARSE_ERR_SYNTAX_RDATA,
					FUNC5(strbuf));
			break;
		}
	}
	*rr_cur_len += hex_data_size/2;
	return LDNS_WIREPARSE_ERR_OK;
}