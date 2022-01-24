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
typedef  char* heim_general_string ;

/* Variables and functions */
 int ASN1_BAD_CHARACTER ; 
 int ASN1_BAD_LENGTH ; 
 int ENOMEM ; 
 char* FUNC0 (size_t) ; 
 unsigned char* FUNC1 (unsigned char const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char const*,size_t) ; 

int
FUNC3 (const unsigned char *p, size_t len,
			heim_general_string *str, size_t *size)
{
    const unsigned char *p1;
    char *s;

    p1 = FUNC1(p, 0, len);
    if (p1 != NULL) {
	/*
	 * Allow trailing NULs. We allow this since MIT Kerberos sends
	 * an strings in the NEED_PREAUTH case that includes a
	 * trailing NUL.
	 */
	while ((size_t)(p1 - p) < len && *p1 == '\0')
	    p1++;
       if ((size_t)(p1 - p) != len)
	    return ASN1_BAD_CHARACTER;
    }
    if (len > len + 1)
	return ASN1_BAD_LENGTH;

    s = FUNC0 (len + 1);
    if (s == NULL)
	return ENOMEM;
    FUNC2 (s, p, len);
    s[len] = '\0';
    *str = s;
    if(size) *size = len;
    return 0;
}