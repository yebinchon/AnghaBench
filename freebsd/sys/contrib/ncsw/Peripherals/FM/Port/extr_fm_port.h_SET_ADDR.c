
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int low; int high; } ;
typedef TYPE_1__ t_FmPhysAddr ;


 int WRITE_UINT32 (int ,int ) ;
 int WRITE_UINT8 (int ,int ) ;

__attribute__((used)) static __inline__ void SET_ADDR(volatile t_FmPhysAddr *fmPhysAddr, uint64_t value)
{
    WRITE_UINT8(fmPhysAddr->high,(uint8_t)((value & 0x000000ff00000000LL) >> 32));
    WRITE_UINT32(fmPhysAddr->low,(uint32_t)value);
}
