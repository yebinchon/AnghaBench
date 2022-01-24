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
typedef  int /*<<< orphan*/  time_t ;
struct xml_data {int num_keys; int /*<<< orphan*/ * ds; int /*<<< orphan*/ * cdigest; int /*<<< orphan*/ * cdigtype; int /*<<< orphan*/ * calgo; int /*<<< orphan*/ * ctag; int /*<<< orphan*/ * czone; int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  XML_Parser ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int verb ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct xml_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BIO*
FUNC14(BIO* xml, time_t now)
{
	char* pp;
	int len;
	XML_Parser parser;
	struct xml_data data;

	parser = FUNC6(NULL);
	if(!parser) {
		if(verb) FUNC12("could not XML_ParserCreate\n");
		FUNC8(0);
	}

	/* setup callbacks */
	FUNC13(parser, &data, now);

	/* parse it */
	(void)FUNC2(xml, 0);
	len = (int)FUNC1(xml, &pp);
	if(!len || !pp) {
		if(verb) FUNC12("out of memory\n");
		FUNC8(0);
	}
	if(!FUNC5(parser, pp, len, 1 /*isfinal*/ )) {
		const char *e = FUNC3(FUNC4(parser));
		if(verb) FUNC12("XML_Parse failure %s\n", e?e:"");
		FUNC8(0);
	}

	/* parsed */
	if(verb) FUNC12("XML was parsed successfully, %d keys\n",
			data.num_keys);
	FUNC10(data.tag);
	FUNC7(parser);

	if(verb >= 4) {
		(void)FUNC2(data.ds, 0);
		len = FUNC1(data.ds, &pp);
		FUNC12("got DS bio %d: '", len);
		if(!FUNC11(pp, (size_t)len, 1, stdout))
			/* compilers do not allow us to ignore fwrite .. */
			FUNC9(stderr, "error writing to stdout\n");
		FUNC12("'\n");
	}
	FUNC0(data.czone);
	FUNC0(data.ctag);
	FUNC0(data.calgo);
	FUNC0(data.cdigtype);
	FUNC0(data.cdigest);

	if(data.num_keys == 0) {
		/* the root zone seems to have gone insecure */
		FUNC0(data.ds);
		return NULL;
	} else {
		return data.ds;
	}
}