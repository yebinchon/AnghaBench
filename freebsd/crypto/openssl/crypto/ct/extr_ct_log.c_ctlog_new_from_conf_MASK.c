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
typedef  int /*<<< orphan*/  CTLOG ;
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,char*,char const*) ; 
 int /*<<< orphan*/  CT_F_CTLOG_NEW_FROM_CONF ; 
 int /*<<< orphan*/  CT_R_LOG_CONF_MISSING_DESCRIPTION ; 
 int /*<<< orphan*/  CT_R_LOG_CONF_MISSING_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/  const*,char const*,char*) ; 

__attribute__((used)) static int FUNC3(CTLOG **ct_log, const CONF *conf, const char *section)
{
    const char *description = FUNC2(conf, section, "description");
    char *pkey_base64;

    if (description == NULL) {
        FUNC1(CT_F_CTLOG_NEW_FROM_CONF, CT_R_LOG_CONF_MISSING_DESCRIPTION);
        return 0;
    }

    pkey_base64 = FUNC2(conf, section, "key");
    if (pkey_base64 == NULL) {
        FUNC1(CT_F_CTLOG_NEW_FROM_CONF, CT_R_LOG_CONF_MISSING_KEY);
        return 0;
    }

    return FUNC0(ct_log, pkey_base64, description);
}