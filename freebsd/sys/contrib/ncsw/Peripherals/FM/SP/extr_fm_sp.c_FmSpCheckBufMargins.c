
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ startMargins; scalar_t__ endMargins; } ;
typedef TYPE_1__ t_FmSpBufMargins ;
typedef int t_Error ;


 int E_INVALID_VALUE ;
 int E_OK ;
 int MAJOR ;
 scalar_t__ MAX_EXT_BUFFER_OFFSET ;
 int RETURN_ERROR (int ,int ,char*) ;

t_Error FmSpCheckBufMargins(t_FmSpBufMargins *p_FmSpBufMargins)
{

    if (p_FmSpBufMargins->startMargins > MAX_EXT_BUFFER_OFFSET)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("bufMargins.startMargins can't be larger than %d", MAX_EXT_BUFFER_OFFSET));
    if (p_FmSpBufMargins->endMargins > MAX_EXT_BUFFER_OFFSET)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("bufMargins.endMargins can't be larger than %d", MAX_EXT_BUFFER_OFFSET));

    return E_OK;
}
