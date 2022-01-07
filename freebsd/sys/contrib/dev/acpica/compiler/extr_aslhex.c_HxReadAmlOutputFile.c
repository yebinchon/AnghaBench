
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int Handle; } ;


 size_t ASL_FILE_AML_OUTPUT ;
 int ASL_MSG_READ ;
 int AslAbort () ;
 TYPE_1__* AslGbl_Files ;
 int FlFileError (size_t,int ) ;
 int HEX_TABLE_LINE_SIZE ;
 scalar_t__ ferror (int ) ;
 int fread (int *,int,int ,int ) ;

__attribute__((used)) static UINT32
HxReadAmlOutputFile (
    UINT8 *Buffer)
{
    UINT32 Actual;


    Actual = fread (Buffer, 1, HEX_TABLE_LINE_SIZE,
        AslGbl_Files[ASL_FILE_AML_OUTPUT].Handle);

    if (ferror (AslGbl_Files[ASL_FILE_AML_OUTPUT].Handle))
    {
        FlFileError (ASL_FILE_AML_OUTPUT, ASL_MSG_READ);
        AslAbort ();
    }

    return (Actual);
}
