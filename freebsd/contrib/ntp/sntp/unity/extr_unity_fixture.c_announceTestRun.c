
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int RepeatCount; } ;


 int UNITY_OUTPUT_CHAR (char) ;
 TYPE_1__ UnityFixture ;
 int UnityPrint (char*) ;
 int UnityPrintNumber (unsigned int) ;

__attribute__((used)) static void announceTestRun(unsigned int runNumber)
{
    UnityPrint("Unity test run ");
    UnityPrintNumber(runNumber+1);
    UnityPrint(" of ");
    UnityPrintNumber(UnityFixture.RepeatCount);
    UNITY_OUTPUT_CHAR('\n');
}
