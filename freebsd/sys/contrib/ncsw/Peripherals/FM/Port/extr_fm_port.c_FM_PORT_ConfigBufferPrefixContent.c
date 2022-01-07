
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_5__ {scalar_t__ dataAlign; } ;
struct TYPE_4__ {TYPE_2__ bufferPrefixContent; struct TYPE_4__* p_FmPortDriverParam; } ;
typedef TYPE_1__ t_FmPort ;
typedef int t_FmBufferPrefixContent ;
typedef int t_Error ;


 scalar_t__ DEFAULT_PORT_bufferPrefixContent_dataAlign ;
 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int memcpy (TYPE_2__*,int *,int) ;

t_Error FM_PORT_ConfigBufferPrefixContent(
        t_Handle h_FmPort, t_FmBufferPrefixContent *p_FmBufferPrefixContent)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    memcpy(&p_FmPort->p_FmPortDriverParam->bufferPrefixContent,
           p_FmBufferPrefixContent, sizeof(t_FmBufferPrefixContent));

    if (!p_FmPort->p_FmPortDriverParam->bufferPrefixContent.dataAlign)
        p_FmPort->p_FmPortDriverParam->bufferPrefixContent.dataAlign =
                DEFAULT_PORT_bufferPrefixContent_dataAlign;

    return E_OK;
}
