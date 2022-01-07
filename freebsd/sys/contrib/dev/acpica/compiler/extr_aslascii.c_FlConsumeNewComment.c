
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int Line; int Offset; } ;
typedef int FILE ;
typedef TYPE_1__ ASL_FILE_STATUS ;


 int fread (int*,int,int,int *) ;

__attribute__((used)) static void
FlConsumeNewComment (
    FILE *Handle,
    ASL_FILE_STATUS *Status)
{
    UINT8 Byte;


    while (fread (&Byte, 1, 1, Handle) == 1)
    {
        Status->Offset++;



        if (Byte == 0x0A)
        {
            Status->Line++;
            return;
        }
    }
}
