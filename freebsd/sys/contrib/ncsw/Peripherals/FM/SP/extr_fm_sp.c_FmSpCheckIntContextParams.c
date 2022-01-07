
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int intContextOffset; scalar_t__ size; int extBufOffset; } ;
typedef TYPE_1__ t_FmSpIntContextDataCopy ;
typedef int t_Error ;


 int E_INVALID_VALUE ;
 int E_OK ;
 int MAJOR ;
 int MAX_EXT_OFFSET ;
 scalar_t__ MAX_IC_SIZE ;
 int MAX_INT_OFFSET ;
 int OFFSET_UNITS ;
 int RETURN_ERROR (int ,int ,char*) ;

t_Error FmSpCheckIntContextParams(t_FmSpIntContextDataCopy *p_FmSpIntContextDataCopy)
{

    if (p_FmSpIntContextDataCopy->intContextOffset >MAX_INT_OFFSET)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("intContext.intContextOffset can't be larger than %d", MAX_INT_OFFSET));
    if (p_FmSpIntContextDataCopy->intContextOffset % OFFSET_UNITS)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("intContext.intContextOffset has to be divisible by %d", OFFSET_UNITS));


    if (p_FmSpIntContextDataCopy->size + p_FmSpIntContextDataCopy->intContextOffset > MAX_IC_SIZE)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("intContext.size + intContext.intContextOffset has to be smaller than %d", MAX_IC_SIZE));

    if (p_FmSpIntContextDataCopy->size % OFFSET_UNITS)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("intContext.size  has to be divisible by %d", OFFSET_UNITS));


    if (p_FmSpIntContextDataCopy->extBufOffset > MAX_EXT_OFFSET)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("intContext.extBufOffset can't be larger than %d", MAX_EXT_OFFSET));
    if (p_FmSpIntContextDataCopy->extBufOffset % OFFSET_UNITS)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("intContext.extBufOffset  has to be divisible by %d", OFFSET_UNITS));

    return E_OK;
}
