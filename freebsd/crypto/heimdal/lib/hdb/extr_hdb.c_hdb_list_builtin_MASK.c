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
struct hdb_method {char* prefix; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (size_t) ; 
 struct hdb_method const* methods ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 scalar_t__ FUNC3 (char*) ; 

krb5_error_code
FUNC4(krb5_context context, char **list)
{
    const struct hdb_method *h;
    size_t len = 0;
    char *buf = NULL;

    for (h = methods; h->prefix != NULL; ++h) {
	if (h->prefix[0] == '\0')
	    continue;
	len += FUNC3(h->prefix) + 2;
    }

    len += 1;
    buf = FUNC1(len);
    if (buf == NULL) {
	FUNC0(context, ENOMEM, "malloc: out of memory");
	return ENOMEM;
    }
    buf[0] = '\0';

    for (h = methods; h->prefix != NULL; ++h) {
	if (h != methods)
	    FUNC2(buf, ", ", len);
	FUNC2(buf, h->prefix, len);
    }
    *list = buf;
    return 0;
}