
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef size_t UINT32 ;
typedef int UINT16 ;
typedef int BOOLEAN ;







 size_t AeBuildFullExceptionCode (int,int ) ;
 size_t* AslGbl_DisabledMessages ;
 size_t AslGbl_DisabledMessagesIndex ;
 int AslGbl_WarningLevel ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
AslIsExceptionDisabled (
    UINT8 Level,
    UINT16 MessageId)
{
    UINT32 EncodedMessageId;
    UINT32 i;


    switch (Level)
    {
    case 129:
    case 128:



        if (Level > AslGbl_WarningLevel)
        {
            return (TRUE);
        }


    case 130:
    case 131:
    case 132:




        EncodedMessageId = AeBuildFullExceptionCode (Level, MessageId);
        for (i = 0; i < AslGbl_DisabledMessagesIndex; i++)
        {


            if (EncodedMessageId == AslGbl_DisabledMessages[i])
            {
                return (TRUE);
            }
        }
        break;

    default:
        break;
    }

    return (FALSE);
}
