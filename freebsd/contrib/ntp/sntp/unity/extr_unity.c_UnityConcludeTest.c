
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isExpectingFail; int CurrentTestFailed; char* XFAILMessage; scalar_t__ CurrentTestIgnored; int TestFailures; int TestXPASSES; int CurrentTestLineNumber; int TestFile; int TestPasses; int TestIgnores; int TestXFAILS; } ;


 int UNITY_PRINT_EOL ;
 TYPE_1__ Unity ;
 int UnityPrint (int ) ;
 int UnityStrPass ;
 int UnityStrXPASS ;
 int UnityTestResultsBegin (int ,int ) ;
 int printf (char*,...) ;

void UnityConcludeTest(void)
{
 if (Unity.isExpectingFail == 1 && Unity.CurrentTestFailed == 1)
 {
  Unity.TestXFAILS++;
  if (Unity.XFAILMessage != ((void*)0))
  {
   if (Unity.XFAILMessage[0] != ' ')
   {
    printf(" ");
   }

   printf("| ");
   printf("%s", Unity.XFAILMessage);
   Unity.XFAILMessage = ((void*)0);
  }
  else
  {
   printf(" - EXPECTED FAIL!");
  }
 }
 else

    if (Unity.CurrentTestIgnored)
    {
        Unity.TestIgnores++;
    }
    else if (!Unity.CurrentTestFailed)
    {
 if(Unity.isExpectingFail == 0) {
  UnityTestResultsBegin(Unity.TestFile, Unity.CurrentTestLineNumber);
  UnityPrint(UnityStrPass);
  Unity.TestPasses++;
 }


 else if (Unity.isExpectingFail == 1 && Unity.CurrentTestFailed == 0)
 {

  UnityTestResultsBegin(Unity.TestFile, Unity.CurrentTestLineNumber);
  UnityPrint(UnityStrXPASS);
  Unity.TestXPASSES++;

  printf(" - FAIL WAS EXPECTED, BUT DIDN'T HAPPEN?!");

 }
    }
    else
    {
        Unity.TestFailures++;
    }

    Unity.CurrentTestFailed = 0;
    Unity.CurrentTestIgnored = 0;
    Unity.isExpectingFail = 0;

    UNITY_PRINT_EOL;
}
