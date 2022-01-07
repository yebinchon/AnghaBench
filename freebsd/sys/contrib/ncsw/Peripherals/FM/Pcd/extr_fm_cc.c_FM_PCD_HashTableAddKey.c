
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_8__ {int kgHashShift; struct TYPE_8__* p_Key; scalar_t__ p_Mask; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
typedef TYPE_1__ t_FmPcdCcKeyParams ;
typedef scalar_t__ t_Error ;


 int E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_VALUE ;
 int E_NULL_POINTER ;
 int FM_PCD_LAST_KEY_INDEX ;
 scalar_t__ FM_PCD_MatchTableAddKey (scalar_t__,int ,int ,TYPE_1__*) ;
 scalar_t__ FM_PCD_MatchTableGetIndexedHashBucket (TYPE_1__*,int ,TYPE_1__*,int ,scalar_t__*,int *,int *) ;
 int MAJOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_PCD_HashTableAddKey(t_Handle h_HashTbl, uint8_t keySize,
                               t_FmPcdCcKeyParams *p_KeyParams)
{
    t_FmPcdCcNode *p_HashTbl = (t_FmPcdCcNode *)h_HashTbl;
    t_Handle h_HashBucket;
    uint8_t bucketIndex;
    uint16_t lastIndex;
    t_Error err;

    SANITY_CHECK_RETURN_ERROR(p_HashTbl, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_KeyParams, E_NULL_POINTER);
    SANITY_CHECK_RETURN_ERROR(p_KeyParams->p_Key, E_NULL_POINTER);

    if (p_KeyParams->p_Mask)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("Keys masks not supported for hash table"));

    err = FM_PCD_MatchTableGetIndexedHashBucket(p_HashTbl, keySize,
                                                p_KeyParams->p_Key,
                                                p_HashTbl->kgHashShift,
                                                &h_HashBucket, &bucketIndex,
                                                &lastIndex);
    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    return FM_PCD_MatchTableAddKey(h_HashBucket, FM_PCD_LAST_KEY_INDEX, keySize,
                                   p_KeyParams);
}
