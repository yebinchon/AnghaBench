
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* t_Handle ;
struct TYPE_7__ {uintptr_t baseAddr; struct TYPE_7__* h_Mem; int size; } ;
typedef TYPE_1__ t_FmMuram ;


 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int MAJOR ;
 scalar_t__ MM_Init (TYPE_1__**,uintptr_t,int ) ;
 int REPORT_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_1__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

t_Handle FM_MURAM_ConfigAndInit(uintptr_t baseAddress, uint32_t size)
{
    t_Handle h_Mem;
    t_FmMuram *p_FmMuram;

    if (!baseAddress)
    {
        REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("baseAddress 0 is not supported"));
        return ((void*)0);
    }

    if (baseAddress%4)
    {
        REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("baseAddress not 4 bytes aligned!"));
        return ((void*)0);
    }


    p_FmMuram = (t_FmMuram *) XX_Malloc(sizeof(t_FmMuram));
    if (!p_FmMuram)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM MURAM driver structure"));
        return ((void*)0);
    }
    memset(p_FmMuram, 0, sizeof(t_FmMuram));


    if ((MM_Init(&h_Mem, baseAddress, size) != E_OK) || (!h_Mem))
    {
        XX_Free(p_FmMuram);
        REPORT_ERROR(MAJOR, E_INVALID_HANDLE, ("FM-MURAM partition!!!"));
        return ((void*)0);
    }


    p_FmMuram->baseAddr = baseAddress;
    p_FmMuram->size = size;
    p_FmMuram->h_Mem = h_Mem;

    return p_FmMuram;
}
