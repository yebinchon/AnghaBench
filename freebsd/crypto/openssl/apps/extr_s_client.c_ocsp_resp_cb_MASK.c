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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  OCSP_RESPONSE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char const**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC6(SSL *s, void *arg)
{
    const unsigned char *p;
    int len;
    OCSP_RESPONSE *rsp;
    len = FUNC4(s, &p);
    FUNC1(arg, "OCSP response: ");
    if (p == NULL) {
        FUNC1(arg, "no response sent\n");
        return 1;
    }
    rsp = FUNC5(NULL, &p, len);
    if (rsp == NULL) {
        FUNC1(arg, "response parse error\n");
        FUNC0(arg, (char *)p, len, 4);
        return 0;
    }
    FUNC1(arg, "\n======================================\n");
    FUNC3(arg, rsp, 0);
    FUNC1(arg, "======================================\n");
    FUNC2(rsp);
    return 1;
}