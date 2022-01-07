
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 scalar_t__ AslGbl_AllExceptionsDisabled ;
 int AslIsExceptionDisabled (int ,int ) ;
 int AslIsExceptionExpected (int ,int ) ;

BOOLEAN
AslIsExceptionIgnored (
    UINT8 Level,
    UINT16 MessageId)
{
    BOOLEAN ExceptionIgnored;




    ExceptionIgnored = AslIsExceptionDisabled (Level, MessageId);
    ExceptionIgnored |= AslIsExceptionExpected (Level, MessageId);

    return (AslGbl_AllExceptionsDisabled || ExceptionIgnored);
}
