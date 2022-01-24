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
typedef  TYPE_1__* gss_OID ;
struct TYPE_3__ {size_t length; char* elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char const*,size_t) ; 

__attribute__((used)) static int
FUNC4(const unsigned char *p, size_t len,
	   const gss_OID oid, char **name)
{
    size_t l;

    if (len < 4)
	return 1;

    /* TOK_ID */
    if (FUNC2(p, "\x04\x01", 2) != 0)
	return 1;
    len -= 2;
    p += 2;

    /* MECH_LEN */
    l = (p[0] << 8) | p[1];
    len -= 2;
    p += 2;
    if (l < 2 || len < l)
	return 1;

    /* oid wrapping */
    if (p[0] != 6 || p[1] != l - 2)
	return 1;
    p += 2;
    l -= 2;
    len -= 2;

    /* MECH */
    if (l != oid->length || FUNC2(p, oid->elements, oid->length) != 0)
	return 1;
    len -= l;
    p += l;

    /* MECHNAME_LEN */
    if (len < 4)
	return 1;
    l = p[0] << 24 | p[1] << 16 | p[2] << 8 | p[3];
    len -= 4;
    p += 4;

    /* MECH NAME */
    if (len != l)
	return 1;

    *name = FUNC1(l + 1);
    FUNC0(*name != NULL);
    FUNC3(*name, p, l);
    (*name)[l] = '\0';

    return 0;
}