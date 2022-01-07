
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int FILE ;


 size_t AE_OK ;
 size_t ASL_EOF ;
 size_t ASL_IGNORE_LINE ;
 int AcpiGbl_LineScanState ;
 char* AslGbl_CurrentLineBuffer ;
 size_t AslGbl_LineBufferSize ;
 int EOF ;




 int UtExpandLineBuffers () ;
 int getc (int *) ;
 int memset (char*,int ,size_t) ;

__attribute__((used)) static UINT32
PrGetNextLine (
    FILE *Handle)
{
    UINT32 i;
    int c = 0;
    int PreviousChar;




    memset (AslGbl_CurrentLineBuffer, 0, AslGbl_LineBufferSize);
    for (i = 0; ;)
    {




        if (i >= AslGbl_LineBufferSize)
        {
            UtExpandLineBuffers ();
        }

        PreviousChar = c;
        c = getc (Handle);
        if (c == EOF)
        {





            if (i > 0)
            {
                AslGbl_CurrentLineBuffer[i] = '\n';
                return (AE_OK);
            }

            return (ASL_EOF);
        }



        switch (AcpiGbl_LineScanState)
        {
        case 130:



            if ((PreviousChar == '/') && (c == '*'))
            {
                AcpiGbl_LineScanState = 131;
            }



            else if ((PreviousChar == '/') && (c == '/'))
            {
                AcpiGbl_LineScanState = 128;
            }



            else if (PreviousChar == '"')
            {
                AcpiGbl_LineScanState = 129;
            }
            break;

        case 129:

            if (PreviousChar == '"')
            {
                AcpiGbl_LineScanState = 130;
            }
            break;

        case 131:



            if ((PreviousChar == '*') && (c == '/'))
            {
                AcpiGbl_LineScanState = 130;
            }
            break;

        case 128:
        default:
            break;
        }



        AslGbl_CurrentLineBuffer[i] = (char) c;
        i++;



        if (c == '\n')
        {


            if (AcpiGbl_LineScanState == 131)
            {
                return (ASL_IGNORE_LINE);
            }



            if (AcpiGbl_LineScanState == 128)
            {
                AcpiGbl_LineScanState = 130;
                return (AE_OK);
            }



            if (i == 1)
            {
                return (ASL_IGNORE_LINE);
            }

            return (AE_OK);
        }
    }
}
