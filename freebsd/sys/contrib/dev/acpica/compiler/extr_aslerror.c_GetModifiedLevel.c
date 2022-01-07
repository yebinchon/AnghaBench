
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef size_t UINT16 ;


 int ASL_ERROR ;
 size_t AeBuildFullExceptionCode (int ,size_t) ;
 size_t* AslGbl_ElevatedMessages ;
 size_t AslGbl_ElevatedMessagesIndex ;

__attribute__((used)) static UINT8
GetModifiedLevel (
    UINT8 Level,
    UINT16 MessageId)
{
    UINT16 i;
    UINT16 ExceptionCode;


    ExceptionCode = AeBuildFullExceptionCode (Level, MessageId);

    for (i = 0; i < AslGbl_ElevatedMessagesIndex; i++)
    {
        if (ExceptionCode == AslGbl_ElevatedMessages[i])
        {
            return (ASL_ERROR);
        }
    }

    return (Level);
}
