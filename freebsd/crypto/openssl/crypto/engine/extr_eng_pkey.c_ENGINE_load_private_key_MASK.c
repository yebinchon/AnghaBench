#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UI_METHOD ;
struct TYPE_4__ {scalar_t__ funct_ref; int /*<<< orphan*/ * (* load_privkey ) (TYPE_1__*,char const*,int /*<<< orphan*/ *,void*) ;} ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_LOAD_PRIVATE_KEY ; 
 int /*<<< orphan*/  ENGINE_R_FAILED_LOADING_PRIVATE_KEY ; 
 int /*<<< orphan*/  ENGINE_R_NOT_INITIALISED ; 
 int /*<<< orphan*/  ENGINE_R_NO_LOAD_FUNCTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  global_engine_lock ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *,void*) ; 

EVP_PKEY *FUNC4(ENGINE *e, const char *key_id,
                                  UI_METHOD *ui_method, void *callback_data)
{
    EVP_PKEY *pkey;

    if (e == NULL) {
        FUNC2(ENGINE_F_ENGINE_LOAD_PRIVATE_KEY,
                  ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    FUNC1(global_engine_lock);
    if (e->funct_ref == 0) {
        FUNC0(global_engine_lock);
        FUNC2(ENGINE_F_ENGINE_LOAD_PRIVATE_KEY, ENGINE_R_NOT_INITIALISED);
        return 0;
    }
    FUNC0(global_engine_lock);
    if (!e->load_privkey) {
        FUNC2(ENGINE_F_ENGINE_LOAD_PRIVATE_KEY,
                  ENGINE_R_NO_LOAD_FUNCTION);
        return 0;
    }
    pkey = e->load_privkey(e, key_id, ui_method, callback_data);
    if (!pkey) {
        FUNC2(ENGINE_F_ENGINE_LOAD_PRIVATE_KEY,
                  ENGINE_R_FAILED_LOADING_PRIVATE_KEY);
        return 0;
    }
    return pkey;
}