
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ FICL_WORD ;


 int FW_COMPILE ;

int wordIsCompileOnly(FICL_WORD *pFW)
{
    return ((pFW != ((void*)0)) && (pFW->flags & FW_COMPILE));
}
