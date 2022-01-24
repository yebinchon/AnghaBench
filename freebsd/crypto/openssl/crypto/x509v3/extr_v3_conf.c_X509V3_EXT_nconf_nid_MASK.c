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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,char const*) ; 
 int FUNC2 (char const**) ; 
 int FUNC3 (char const**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *) ; 

X509_EXTENSION *FUNC5(CONF *conf, X509V3_CTX *ctx, int ext_nid,
                                     const char *value)
{
    int crit;
    int ext_type;
    crit = FUNC2(&value);
    if ((ext_type = FUNC3(&value)))
        return FUNC4(FUNC0(ext_nid),
                                    value, crit, ext_type, ctx);
    return FUNC1(conf, ctx, ext_nid, crit, value);
}