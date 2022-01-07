
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int hmcdBasePtr; } ;
typedef TYPE_1__ t_Hmtd ;
struct TYPE_5__ {scalar_t__ physicalMuramBase; int h_Hc; } ;
typedef TYPE_2__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 scalar_t__ FmHcPcdCcDoDynamicChange (int ,int ,int ) ;
 int MINOR ;
 int MemCpy8 (int *,int *,int) ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 int WRITE_UINT32 (int ,int ) ;
 scalar_t__ XX_VirtToPhys (int *) ;

__attribute__((used)) static void BuildHmtd(uint8_t *p_Dest, uint8_t *p_Src, uint8_t *p_Hmcd,
                      t_FmPcd *p_FmPcd)
{
    t_Error err;


    MemCpy8(p_Dest, (uint8_t*)p_Src, 16);

    WRITE_UINT32(
            ((t_Hmtd *)p_Dest)->hmcdBasePtr,
            (uint32_t)(XX_VirtToPhys(p_Hmcd) - ((t_FmPcd*)p_FmPcd)->physicalMuramBase));

    err = FmHcPcdCcDoDynamicChange(
            p_FmPcd->h_Hc,
            (uint32_t)(XX_VirtToPhys(p_Src) - p_FmPcd->physicalMuramBase),
            (uint32_t)(XX_VirtToPhys(p_Dest) - p_FmPcd->physicalMuramBase));
    if (err)
        REPORT_ERROR(MINOR, err, ("Failed in dynamic manip change, continued to the rest of the owners."));
}
