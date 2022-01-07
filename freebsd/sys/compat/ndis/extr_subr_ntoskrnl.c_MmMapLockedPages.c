
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int mdl_flags; } ;
typedef TYPE_1__ mdl ;


 int MDL_MAPPED_TO_SYSTEM_VA ;
 void* MmGetMdlVirtualAddress (TYPE_1__*) ;

__attribute__((used)) static void *
MmMapLockedPages(mdl *buf, uint8_t accessmode)
{
 buf->mdl_flags |= MDL_MAPPED_TO_SYSTEM_VA;
 return (MmGetMdlVirtualAddress(buf));
}
