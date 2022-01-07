
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ v ;
typedef int UInt32 ;
typedef void* UInt16 ;
struct TYPE_3__ {void* SuccessorHigh; void* SuccessorLow; } ;
typedef scalar_t__ CPpmd_Void_Ref ;
typedef TYPE_1__ CPpmd_State ;



__attribute__((used)) static void SetSuccessor(CPpmd_State *p, CPpmd_Void_Ref v)
{
  (p)->SuccessorLow = (UInt16)((UInt32)(v) & 0xFFFF);
  (p)->SuccessorHigh = (UInt16)(((UInt32)(v) >> 16) & 0xFFFF);
}
