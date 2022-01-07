
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef scalar_t__ UINT16 ;



UINT16
AeBuildFullExceptionCode (
    UINT8 Level,
    UINT16 MessageId)
{





    return (((Level + 1) * 1000) + MessageId);
}
