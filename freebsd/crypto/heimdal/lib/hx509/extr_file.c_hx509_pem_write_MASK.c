#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {char* header; char* value; struct TYPE_3__* next; } ;
typedef  TYPE_1__ hx509_pem_header ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t ENCODE_LINE_LENGTH ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (char const*,size_t,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 

int
FUNC5(hx509_context context, const char *type,
		hx509_pem_header *headers, FILE *f,
		const void *data, size_t size)
{
    const char *p = data;
    size_t length;
    char *line;

#define ENCODE_LINE_LENGTH	54

    FUNC4(f, "BEGIN", type);

    while (headers) {
	FUNC1(f, "%s: %s\n%s",
		headers->header, headers->value,
		headers->next ? "" : "\n");
	headers = headers->next;
    }

    while (size > 0) {
	ssize_t l;

	length = size;
	if (length > ENCODE_LINE_LENGTH)
	    length = ENCODE_LINE_LENGTH;

	l = FUNC0(p, length, &line);
	if (l < 0) {
	    FUNC3(context, 0, ENOMEM,
				   "malloc - out of memory");
	    return ENOMEM;
	}
	size -= length;
	FUNC1(f, "%s\n", line);
	p += length;
	FUNC2(line);
    }

    FUNC4(f, "END", type);

    return 0;
}