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
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(sldns_buffer* strbuf, const char** delimiters,
	sldns_rdf_type rdftype)
{
	if(FUNC3(rdftype) &&
		FUNC1(strbuf) > 0) {

		/* skip spaces */
		while(FUNC1(strbuf) > 0 &&
			*(FUNC0(strbuf)) == ' ') {
			FUNC2(strbuf, 1);
		}

		if(FUNC1(strbuf) > 0 &&
			*(FUNC0(strbuf)) == '\"') {
			*delimiters = "\"\0";
			FUNC2(strbuf, 1);
			return 1;
		}
	}
	return 0;
}