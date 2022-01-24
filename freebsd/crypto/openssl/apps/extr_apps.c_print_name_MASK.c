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
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned long) ; 
 unsigned long XN_FLAG_COMPAT ; 
 unsigned long XN_FLAG_SEP_MASK ; 
 unsigned long XN_FLAG_SEP_MULTILINE ; 

void FUNC4(BIO *out, const char *title, X509_NAME *nm,
                unsigned long lflags)
{
    char *buf;
    char mline = 0;
    int indent = 0;

    if (title)
        FUNC0(out, title);
    if ((lflags & XN_FLAG_SEP_MASK) == XN_FLAG_SEP_MULTILINE) {
        mline = 1;
        indent = 4;
    }
    if (lflags == XN_FLAG_COMPAT) {
        buf = FUNC2(nm, 0, 0);
        FUNC0(out, buf);
        FUNC0(out, "\n");
        FUNC1(buf);
    } else {
        if (mline)
            FUNC0(out, "\n");
        FUNC3(out, nm, indent, lflags);
        FUNC0(out, "\n");
    }
}