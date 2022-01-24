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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TS_F_TS_CONF_LOAD_CERT ; 
 int /*<<< orphan*/  TS_R_CANNOT_LOAD_CERT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

X509 *FUNC4(const char *file)
{
    BIO *cert = NULL;
    X509 *x = NULL;

    if ((cert = FUNC1(file, "r")) == NULL)
        goto end;
    x = FUNC2(cert, NULL, NULL, NULL);
 end:
    if (x == NULL)
        FUNC3(TS_F_TS_CONF_LOAD_CERT, TS_R_CANNOT_LOAD_CERT);
    FUNC0(cert);
    return x;
}