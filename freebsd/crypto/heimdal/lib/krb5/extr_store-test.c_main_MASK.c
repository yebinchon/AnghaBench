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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_BE ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_HOST ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_LE ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(int argc, char **argv)
{
    int nerr = 0;
    krb5_storage *sp;
    krb5_context context;
    krb5_principal principal;


    FUNC3(&context);

    sp = FUNC5();
    FUNC7(sp, 0x01020304);
    nerr += FUNC0("Integer", sp, "\x1\x2\x3\x4", 4);

    sp = FUNC5();
    FUNC6(sp, KRB5_STORAGE_BYTEORDER_LE);
    FUNC7(sp, 0x01020304);
    nerr += FUNC0("Integer (LE)", sp, "\x4\x3\x2\x1", 4);

    sp = FUNC5();
    FUNC6(sp, KRB5_STORAGE_BYTEORDER_BE);
    FUNC7(sp, 0x01020304);
    nerr += FUNC0("Integer (BE)", sp, "\x1\x2\x3\x4", 4);

    sp = FUNC5();
    FUNC6(sp, KRB5_STORAGE_BYTEORDER_HOST);
    FUNC7(sp, 0x01020304);
    {
	int test = 1;
	void *data;
	if(*(char*)&test)
	    data = "\x4\x3\x2\x1";
	else
	    data = "\x1\x2\x3\x4";
	nerr += FUNC0("Integer (host)", sp, data, 4);
    }

    sp = FUNC5();
    FUNC4(context, &principal, "TEST", "foobar", NULL);
    FUNC8(sp, principal);
    FUNC2(context, principal);
    nerr += FUNC0("Principal", sp, "\x0\x0\x0\x1"
		    "\x0\x0\x0\x1"
		    "\x0\x0\x0\x4TEST"
		    "\x0\x0\x0\x6""foobar", 26);

    FUNC1(context);

    return nerr ? 1 : 0;
}