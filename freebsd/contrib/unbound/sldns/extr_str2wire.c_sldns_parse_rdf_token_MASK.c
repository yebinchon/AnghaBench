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
typedef  int /*<<< orphan*/  sldns_rdf_type ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,size_t,int*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(sldns_buffer* strbuf, char* token, size_t token_len,
	int* quoted, int* parens, size_t* pre_data_pos,
	const char* delimiters, sldns_rdf_type rdftype, size_t* token_strlen)
{
	size_t slen;

	/* skip spaces */
	while(FUNC4(strbuf) > 0 && !*quoted &&
		*(FUNC2(strbuf)) == ' ') {
		FUNC5(strbuf, 1);
	}

	*pre_data_pos = FUNC3(strbuf);
	if(FUNC1(strbuf, token, (*quoted)?"\"":delimiters,
		token_len, parens, (*quoted)?NULL:" \t") == -1) {
		return 0;
	}
	slen = FUNC7(token);
	/* check if not quoted yet, and we have encountered quotes */
	if(!*quoted && FUNC6(rdftype) &&
		slen >= 2 &&
		(token[0] == '"' || token[0] == '\'') && 
		(token[slen-1] == '"' || token[slen-1] == '\'')) {
		/* move token two smaller (quotes) with endnull */
		FUNC0(token, token+1, slen-2);
		token[slen-2] = 0;
		slen -= 2;
		*quoted = 1;
	} else if(!*quoted && FUNC6(rdftype) &&
		slen >= 2 &&
		(token[0] == '"' || token[0] == '\'')) {
		/* got the start quote (remove it) but read remainder
		 * of quoted string as well into remainder of token */
		FUNC0(token, token+1, slen-1);
		token[slen-1] = 0;
		slen -= 1;
		*quoted = 1;
		/* rewind buffer over skipped whitespace */
		while(FUNC3(strbuf) > 0 &&
			(FUNC2(strbuf)[-1] == ' ' ||
			FUNC2(strbuf)[-1] == '\t')) {
			FUNC5(strbuf, -1);
		}
		if(FUNC1(strbuf, token+slen,
			"\"", token_len-slen,
			parens, NULL) == -1) {
			return 0;
		}
		slen = FUNC7(token);
	}
	*token_strlen = slen;
	return 1;
}