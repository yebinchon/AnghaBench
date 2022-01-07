
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;



UINT32
DtGetBufferLength (
    char *Buffer)
{
    UINT32 ByteLength = 0;


    while (*Buffer)
    {
        if (*Buffer == ' ')
        {
            ByteLength++;

            while (*Buffer == ' ')
            {
                Buffer++;
            }
        }

        Buffer++;
    }

    return (++ByteLength);
}
