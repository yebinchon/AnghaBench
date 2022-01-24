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
typedef  int (* hx509_pem_read_func ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,void*,size_t,void*) ;
typedef  int /*<<< orphan*/  hx509_pem_header ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HX509_PARSING_KEY_FAILED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,char*) ; 
 char* FUNC2 (int) ; 
 void* FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char*,char) ; 
 int FUNC12 (char*,char*) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,void*,size_t,void*) ; 

int
FUNC16(hx509_context context,
	       FILE *f,
	       hx509_pem_read_func func,
	       void *ctx)
{
    hx509_pem_header *headers = NULL;
    char *type = NULL;
    void *data = NULL;
    size_t len = 0;
    char buf[1024];
    int ret = HX509_PARSING_KEY_FAILED;

    enum { BEFORE, SEARCHHEADER, INHEADER, INDATA, DONE } where;

    where = BEFORE;

    while (FUNC4(buf, sizeof(buf), f) != NULL) {
	char *p;
	int i;

	i = FUNC12(buf, "\n");
	if (buf[i] == '\n') {
	    buf[i] = '\0';
	    if (i > 0)
		i--;
	}
	if (buf[i] == '\r') {
	    buf[i] = '\0';
	    if (i > 0)
		i--;
	}

	switch (where) {
	case BEFORE:
	    if (FUNC14("-----BEGIN ", buf, 11) == 0) {
		type = FUNC13(buf + 11);
		if (type == NULL)
		    break;
		p = FUNC11(type, '-');
		if (p)
		    *p = '\0';
		where = SEARCHHEADER;
	    }
	    break;
	case SEARCHHEADER:
	    p = FUNC11(buf, ':');
	    if (p == NULL) {
		where = INDATA;
		goto indata;
	    }
	    /* FALLTHOUGH */
	case INHEADER:
	    if (buf[0] == '\0') {
		where = INDATA;
		break;
	    }
	    p = FUNC11(buf, ':');
	    if (p) {
		*p++ = '\0';
		while (FUNC9((int)*p))
		    p++;
		ret = FUNC6(&headers, buf, p);
		if (ret)
		    FUNC0();
	    }
	    break;
	case INDATA:
	indata:

	    if (FUNC14("-----END ", buf, 9) == 0) {
		where = DONE;
		break;
	    }

	    p = FUNC2(i);
	    i = FUNC1(buf, p);
	    if (i < 0) {
		FUNC5(p);
		goto out;
	    }

	    data = FUNC3(data, len + i);
	    FUNC10(((char *)data) + len, p, i);
	    FUNC5(p);
	    len += i;
	    break;
	case DONE:
	    FUNC0();
	}

	if (where == DONE) {
	    ret = (*func)(context, type, headers, data, len, ctx);
	out:
	    FUNC5(data);
	    data = NULL;
	    len = 0;
	    FUNC5(type);
	    type = NULL;
	    where = BEFORE;
	    FUNC7(headers);
	    headers = NULL;
	    if (ret)
		break;
	}
    }

    if (where != BEFORE) {
	FUNC8(context, 0, HX509_PARSING_KEY_FAILED,
			       "File ends before end of PEM end tag");
	ret = HX509_PARSING_KEY_FAILED;
    }
    if (data)
	FUNC5(data);
    if (type)
	FUNC5(type);
    if (headers)
	FUNC7(headers);

    return ret;
}