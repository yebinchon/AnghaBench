#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct evkeyvalq {int dummy; } ;
struct evhttp_request {scalar_t__ headers_size; TYPE_1__* evcon; struct evkeyvalq* input_headers; } ;
struct evbuffer {int dummy; } ;
typedef  enum message_read_status { ____Placeholder_message_read_status } message_read_status ;
struct TYPE_2__ {scalar_t__ max_headers_size; } ;

/* Variables and functions */
 int ALL_DATA_READ ; 
 int DATA_CORRUPTED ; 
 int DATA_TOO_LONG ; 
 int /*<<< orphan*/  EVBUFFER_EOL_CRLF ; 
 int MORE_DATA_EXPECTED ; 
 scalar_t__ FUNC0 (struct evbuffer*) ; 
 char* FUNC1 (struct evbuffer*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct evkeyvalq*,char*,char*) ; 
 int FUNC3 (struct evkeyvalq*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

enum message_read_status
FUNC8(struct evhttp_request *req, struct evbuffer* buffer)
{
	enum message_read_status errcode = DATA_CORRUPTED;
	char *line;
	enum message_read_status status = MORE_DATA_EXPECTED;

	struct evkeyvalq* headers = req->input_headers;
	size_t line_length;
	while ((line = FUNC1(buffer, &line_length, EVBUFFER_EOL_CRLF))
	       != NULL) {
		char *skey, *svalue;

		req->headers_size += line_length;

		if (req->evcon != NULL &&
		    req->headers_size > req->evcon->max_headers_size) {
			errcode = DATA_TOO_LONG;
			goto error;
		}

		if (*line == '\0') { /* Last header - Done */
			status = ALL_DATA_READ;
			FUNC5(line);
			break;
		}

		/* Check if this is a continuation line */
		if (*line == ' ' || *line == '\t') {
			if (FUNC3(headers, line) == -1)
				goto error;
			FUNC5(line);
			continue;
		}

		/* Processing of header lines */
		svalue = line;
		skey = FUNC6(&svalue, ":");
		if (svalue == NULL)
			goto error;

		svalue += FUNC7(svalue, " ");
		FUNC4(svalue);

		if (FUNC2(headers, skey, svalue) == -1)
			goto error;

		FUNC5(line);
	}

	if (status == MORE_DATA_EXPECTED) {
		if (req->evcon != NULL &&
		req->headers_size + FUNC0(buffer) > req->evcon->max_headers_size)
			return (DATA_TOO_LONG);
	}

	return (status);

 error:
	FUNC5(line);
	return (errcode);
}