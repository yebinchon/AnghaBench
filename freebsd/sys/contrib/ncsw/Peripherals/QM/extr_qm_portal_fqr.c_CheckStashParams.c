
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ frameAnnotationSize; scalar_t__ frameDataSize; scalar_t__ fqContextSize; int fqContextAddr; } ;
struct TYPE_6__ {TYPE_1__ stashingParams; } ;
typedef TYPE_2__ t_QmFqrParams ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_2__*) ;
 int CACHELINE_SIZE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int IS_ALIGNED (int,int ) ;
 int MAJOR ;
 scalar_t__ QM_CONTEXTA_MAX_STASH_SIZE ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static __inline__ t_Error CheckStashParams(t_QmFqrParams *p_QmFqrParams)
{
    ASSERT_COND(p_QmFqrParams);

    if (p_QmFqrParams->stashingParams.frameAnnotationSize > QM_CONTEXTA_MAX_STASH_SIZE)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Frame Annotation Size Exceeded Max Stash Size(%d)", QM_CONTEXTA_MAX_STASH_SIZE));
    if (p_QmFqrParams->stashingParams.frameDataSize > QM_CONTEXTA_MAX_STASH_SIZE)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Frame Data Size Exceeded Max Stash Size(%d)", QM_CONTEXTA_MAX_STASH_SIZE));
    if (p_QmFqrParams->stashingParams.fqContextSize > QM_CONTEXTA_MAX_STASH_SIZE)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Frame Context Size Exceeded Max Stash Size(%d)", QM_CONTEXTA_MAX_STASH_SIZE));
    if (p_QmFqrParams->stashingParams.fqContextSize)
    {
        if (!p_QmFqrParams->stashingParams.fqContextAddr)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("FQ Context Address Must be givven"));
        if (!IS_ALIGNED(p_QmFqrParams->stashingParams.fqContextAddr, CACHELINE_SIZE))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("FQ Context Address Must be aligned to %d", CACHELINE_SIZE));
        if (p_QmFqrParams->stashingParams.fqContextAddr & 0xffffff0000000000LL)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("FQ Context Address May be up to 40 bit"));
    }

    return E_OK;
}
