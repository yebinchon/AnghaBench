#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_8__ {int /*<<< orphan*/  kgHashShift; struct TYPE_8__* p_Key; scalar_t__ p_Mask; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;
typedef  TYPE_1__ t_FmPcdCcKeyParams ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 int /*<<< orphan*/  FM_PCD_LAST_KEY_INDEX ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC4(t_Handle h_HashTbl, uint8_t keySize,
                               t_FmPcdCcKeyParams *p_KeyParams)
{
    t_FmPcdCcNode *p_HashTbl = (t_FmPcdCcNode *)h_HashTbl;
    t_Handle h_HashBucket;
    uint8_t bucketIndex;
    uint16_t lastIndex;
    t_Error err;

    FUNC3(p_HashTbl, E_INVALID_HANDLE);
    FUNC3(p_KeyParams, E_NULL_POINTER);
    FUNC3(p_KeyParams->p_Key, E_NULL_POINTER);

    if (p_KeyParams->p_Mask)
        FUNC2(MAJOR, E_INVALID_VALUE,
                     ("Keys masks not supported for hash table"));

    err = FUNC1(p_HashTbl, keySize,
                                                p_KeyParams->p_Key,
                                                p_HashTbl->kgHashShift,
                                                &h_HashBucket, &bucketIndex,
                                                &lastIndex);
    if (err)
        FUNC2(MAJOR, err, NO_MSG);

    return FUNC0(h_HashBucket, FM_PCD_LAST_KEY_INDEX, keySize,
                                   p_KeyParams);
}