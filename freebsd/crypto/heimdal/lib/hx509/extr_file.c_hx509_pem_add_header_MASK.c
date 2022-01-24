#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* header; int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ hx509_pem_header ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (char const*) ; 

int
FUNC3(hx509_pem_header **headers,
		     const char *header, const char *value)
{
    hx509_pem_header *h;

    h = FUNC0(1, sizeof(*h));
    if (h == NULL)
	return ENOMEM;
    h->header = FUNC2(header);
    if (h->header == NULL) {
	FUNC1(h);
	return ENOMEM;
    }
    h->value = FUNC2(value);
    if (h->value == NULL) {
	FUNC1(h->header);
	FUNC1(h);
	return ENOMEM;
    }

    h->next = *headers;
    *headers = h;

    return 0;
}