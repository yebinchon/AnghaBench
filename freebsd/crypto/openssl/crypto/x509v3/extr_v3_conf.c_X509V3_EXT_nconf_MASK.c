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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  X509V3_CTX ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  X509V3_F_X509V3_EXT_NCONF ; 
 int /*<<< orphan*/  X509V3_R_ERROR_IN_EXTENSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*) ; 
 int FUNC4 (char const**) ; 
 int FUNC5 (char const**) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char const*,int,int,int /*<<< orphan*/ *) ; 

X509_EXTENSION *FUNC7(CONF *conf, X509V3_CTX *ctx, const char *name,
                                 const char *value)
{
    int crit;
    int ext_type;
    X509_EXTENSION *ret;
    crit = FUNC4(&value);
    if ((ext_type = FUNC5(&value)))
        return FUNC6(name, value, crit, ext_type, ctx);
    ret = FUNC3(conf, ctx, FUNC1(name), crit, value);
    if (!ret) {
        FUNC2(X509V3_F_X509V3_EXT_NCONF, X509V3_R_ERROR_IN_EXTENSION);
        FUNC0(4, "name=", name, ", value=", value);
    }
    return ret;
}