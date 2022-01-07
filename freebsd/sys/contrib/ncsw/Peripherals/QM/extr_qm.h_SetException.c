
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int exceptions; } ;
typedef TYPE_1__ t_Qm ;
typedef int t_Error ;
typedef int e_QmExceptions ;


 int ASSERT_COND (TYPE_1__*) ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int GET_EXCEPTION_FLAG (int,int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static __inline__ t_Error SetException(t_Qm *p_Qm, e_QmExceptions exception, bool enable)
{
    uint32_t bitMask = 0;

    ASSERT_COND(p_Qm);

    GET_EXCEPTION_FLAG(bitMask, exception);
    if(bitMask)
    {
        if (enable)
            p_Qm->exceptions |= bitMask;
        else
            p_Qm->exceptions &= ~bitMask;
   }
    else
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Undefined exception"));

    return E_OK;
}
