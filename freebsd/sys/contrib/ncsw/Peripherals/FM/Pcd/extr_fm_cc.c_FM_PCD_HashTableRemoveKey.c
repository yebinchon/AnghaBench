
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int kgHashShift; } ;
typedef TYPE_1__ uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
typedef TYPE_1__ t_FmPcdCcNode ;
typedef scalar_t__ t_Error ;


 int E_INVALID_HANDLE ;
 int E_NULL_POINTER ;
 scalar_t__ FM_PCD_MatchTableFindNRemoveKey (scalar_t__,TYPE_1__,TYPE_1__*,int *) ;
 scalar_t__ FM_PCD_MatchTableGetIndexedHashBucket (TYPE_1__*,TYPE_1__,TYPE_1__*,int ,scalar_t__*,TYPE_1__*,int *) ;
 int MAJOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_PCD_HashTableRemoveKey(t_Handle h_HashTbl, uint8_t keySize,
                                  uint8_t *p_Key)
{
    t_FmPcdCcNode *p_HashTbl = (t_FmPcdCcNode *)h_HashTbl;
    t_Handle h_HashBucket;
    uint8_t bucketIndex;
    uint16_t lastIndex;
    t_Error err;

    SANITY_CHECK_RETURN_ERROR(p_HashTbl, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Key, E_NULL_POINTER);

    err = FM_PCD_MatchTableGetIndexedHashBucket(p_HashTbl, keySize, p_Key,
                                                p_HashTbl->kgHashShift,
                                                &h_HashBucket, &bucketIndex,
                                                &lastIndex);
    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    return FM_PCD_MatchTableFindNRemoveKey(h_HashBucket, keySize, p_Key, ((void*)0));
}
