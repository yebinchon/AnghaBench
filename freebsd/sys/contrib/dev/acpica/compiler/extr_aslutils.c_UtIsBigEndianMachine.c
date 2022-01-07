
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;



UINT8
UtIsBigEndianMachine (
    void)
{
    union {
        UINT32 Integer;
        UINT8 Bytes[4];
    } Overlay = {0xFF000000};


    return (Overlay.Bytes[0]);
}
