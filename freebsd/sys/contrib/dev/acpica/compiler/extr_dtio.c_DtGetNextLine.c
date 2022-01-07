
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int FILE ;
typedef int BOOLEAN ;


 scalar_t__ ASL_EOF ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int AcpiOsPrintf (char*,scalar_t__) ;
 char* AslGbl_CurrentLineBuffer ;
 int AslGbl_CurrentLineNumber ;
 scalar_t__ AslGbl_LineBufferSize ;
 scalar_t__ AslGbl_NextLineOffset ;
 scalar_t__ DT_ALLOW_MULTILINE_QUOTES ;
 int DtFatal (int ,int *,char*) ;
 int EOF ;
 int FALSE ;
 int TRUE ;
 int UtExpandLineBuffers () ;
 int ftell (int *) ;
 int getc (int *) ;
 int memset (char*,int ,scalar_t__) ;
 int ungetc (int,int *) ;

UINT32
DtGetNextLine (
    FILE *Handle,
    UINT32 Flags)
{
    BOOLEAN LineNotAllBlanks = FALSE;
    UINT32 State = 132;
    UINT32 CurrentLineOffset;
    UINT32 i;
    int c;
    int c1;


    memset (AslGbl_CurrentLineBuffer, 0, AslGbl_LineBufferSize);
    for (i = 0; ;)
    {




        if (i >= AslGbl_LineBufferSize)
        {
            UtExpandLineBuffers ();
        }

        c = getc (Handle);
        if (c == EOF)
        {
            switch (State)
            {
            case 128:
            case 131:

                AcpiOsPrintf ("**** EOF within comment/string %u\n", State);
                break;

            default:

                break;
            }



            if (i == 0)
            {
                return (ASL_EOF);
            }
            c = '\n';
            State = 132;
        }
        else if (c == '\r')
        {
            c1 = getc (Handle);
            if (c1 == '\n')
            {





                c = '\n';
            }
            else
            {


                ungetc(c1, Handle);

                DtFatal (ASL_MSG_COMPILER_INTERNAL, ((void*)0),
                    "Carriage return without linefeed detected");
                return (ASL_EOF);
            }
        }

        switch (State)
        {
        case 132:



            AslGbl_CurrentLineBuffer[i] = (char) c;
            switch (c)
            {
            case '/':

                State = 129;
                break;

            case '"':

                State = 128;
                LineNotAllBlanks = TRUE;
                i++;
                break;

            case '\\':




                State = 133;
                break;

            case '\n':

                CurrentLineOffset = AslGbl_NextLineOffset;
                AslGbl_NextLineOffset = (UINT32) ftell (Handle);
                AslGbl_CurrentLineNumber++;





                if ((i != 0) && LineNotAllBlanks)
                {
                    if ((i + 1) >= AslGbl_LineBufferSize)
                    {
                        UtExpandLineBuffers ();
                    }

                    AslGbl_CurrentLineBuffer[i+1] = 0;
                    return (CurrentLineOffset);
                }



                i = 0;
                LineNotAllBlanks = FALSE;
                break;

            default:

                if (c != ' ')
                {
                    LineNotAllBlanks = TRUE;
                }

                i++;
                break;
            }
            break;

        case 128:



            AslGbl_CurrentLineBuffer[i] = (char) c;
            i++;

            switch (c)
            {
            case '"':

                State = 132;
                break;

            case '\\':

                State = 134;
                break;

            case '\n':

                if (!(Flags & DT_ALLOW_MULTILINE_QUOTES))
                {
                    AcpiOsPrintf (
                        "ERROR at line %u: Unterminated quoted string\n",
                        AslGbl_CurrentLineNumber++);
                    State = 132;
                }
                break;

            default:

                break;
            }
            break;

        case 134:



            AslGbl_CurrentLineBuffer[i] = (char) c;
            i++;
            State = 128;
            break;

        case 129:



            switch (c)
            {
            case '*':

                State = 131;
                break;

            case '/':

                State = 130;
                break;

            default:

                i++;
                if (i >= AslGbl_LineBufferSize)
                {
                    UtExpandLineBuffers ();
                }

                AslGbl_CurrentLineBuffer[i] = (char) c;
                i++;
                State = 132;
                break;
            }
            break;

        case 131:



            switch (c)
            {
            case '\n':

                AslGbl_NextLineOffset = (UINT32) ftell (Handle);
                AslGbl_CurrentLineNumber++;
                break;

            case '*':

                State = 135;
                break;

            default:

                break;
            }
            break;

        case 130:



            if (c == '\n')
            {


                ungetc (c, Handle);
                State = 132;
            }
            break;

        case 135:



            switch (c)
            {
            case '/':

                State = 132;
                break;

            case '\n':

                AslGbl_NextLineOffset = (UINT32) ftell (Handle);
                AslGbl_CurrentLineNumber++;
                break;

            case '*':


                break;

            default:

                State = 131;
                break;
            }
            break;

        case 133:

            if (c != '\n')
            {




                i++;

                ungetc (c, Handle);
                State = 132;
            }
            else
            {





                AslGbl_CurrentLineBuffer[i] = ' ';
                i++;



                AslGbl_NextLineOffset = (UINT32) ftell (Handle);
                AslGbl_CurrentLineNumber++;
                State = 132;
            }
            break;

        default:

            DtFatal (ASL_MSG_COMPILER_INTERNAL, ((void*)0), "Unknown input state");
            return (ASL_EOF);
        }
    }
}
