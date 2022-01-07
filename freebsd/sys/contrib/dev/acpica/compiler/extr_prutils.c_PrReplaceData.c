
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
PrReplaceData (
    char *Buffer,
    UINT32 LengthToRemove,
    char *BufferToAdd,
    UINT32 LengthToAdd)
{
    UINT32 BufferLength;




    BufferLength = strlen (Buffer) + 1;

    if (LengthToRemove != LengthToAdd)
    {





        if (LengthToRemove > 0)
        {
            memmove ((Buffer + LengthToAdd), (Buffer + LengthToRemove),
                (BufferLength - LengthToRemove));
        }
    }



    if (LengthToAdd > 0)
    {
        memmove (Buffer, BufferToAdd, LengthToAdd);
    }
}
