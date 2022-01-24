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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static int
FUNC3(krb5_storage *sp, krb5_storage *msg, size_t len)
{
    char buf[1024];

    while (len) {
	size_t tlen = len;
	ssize_t slen;

	if (tlen > sizeof(buf))
	    tlen = sizeof(buf);

	slen = FUNC1(sp, buf, tlen);
	FUNC0((size_t)slen == tlen);

	slen = FUNC2(msg, buf, tlen);
	FUNC0((size_t)slen == tlen);

	len -= tlen;
    }
    return 0;
}