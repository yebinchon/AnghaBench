#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* log_store; int /*<<< orphan*/  invalid_log_entries; int /*<<< orphan*/  conf; } ;
struct TYPE_3__ {int /*<<< orphan*/  logs; } ;
typedef  TYPE_2__ CTLOG_STORE_LOAD_CTX ;
typedef  int /*<<< orphan*/  CTLOG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CT_F_CTLOG_STORE_LOAD_LOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const char *log_name, int log_name_len,
                                void *arg)
{
    CTLOG_STORE_LOAD_CTX *load_ctx = arg;
    CTLOG *ct_log = NULL;
    /* log_name may not be null-terminated, so fix that before using it */
    char *tmp;
    int ret = 0;

    /* log_name will be NULL for empty list entries */
    if (log_name == NULL)
        return 1;

    tmp = FUNC3(log_name, log_name_len);
    if (tmp == NULL)
        goto mem_err;

    ret = FUNC4(&ct_log, load_ctx->conf, tmp);
    FUNC2(tmp);

    if (ret < 0) {
        /* Propagate any internal error */
        return ret;
    }
    if (ret == 0) {
        /* If we can't load this log, record that fact and skip it */
        ++load_ctx->invalid_log_entries;
        return 1;
    }

    if (!FUNC5(load_ctx->log_store->logs, ct_log)) {
        goto mem_err;
    }
    return 1;

mem_err:
    FUNC0(ct_log);
    FUNC1(CT_F_CTLOG_STORE_LOAD_LOG, ERR_R_MALLOC_FAILURE);
    return -1;
}