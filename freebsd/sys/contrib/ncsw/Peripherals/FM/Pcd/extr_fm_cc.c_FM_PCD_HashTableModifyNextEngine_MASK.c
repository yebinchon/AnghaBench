#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  kgHashShift; } ;
typedef  TYPE_1__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ t_Handle ;
typedef  TYPE_1__ t_FmPcdCcNode ;
typedef  TYPE_1__ t_FmPcdCcNextEngineParams ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 scalar_t__ FUNC0 (scalar_t__,TYPE_1__,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC4(
        t_Handle h_HashTbl, uint8_t keySize, uint8_t *p_Key,
        t_FmPcdCcNextEngineParams *p_FmPcdCcNextEngineParams)
{
    t_FmPcdCcNode *p_HashTbl = (t_FmPcdCcNode *)h_HashTbl;
    t_Handle h_HashBucket;
    uint8_t bucketIndex;
    uint16_t lastIndex;
    t_Error err;

    FUNC3(p_HashTbl, E_INVALID_HANDLE);
    FUNC3(p_Key, E_NULL_POINTER);
    FUNC3(p_FmPcdCcNextEngineParams, E_NULL_POINTER);

    err = FUNC1(p_HashTbl, keySize, p_Key,
                                                p_HashTbl->kgHashShift,
                                                &h_HashBucket, &bucketIndex,
                                                &lastIndex);
    if (err)
        FUNC2(MAJOR, err, NO_MSG);

    return FUNC0(h_HashBucket, keySize, p_Key,
                                                  NULL,
                                                  p_FmPcdCcNextEngineParams);
}