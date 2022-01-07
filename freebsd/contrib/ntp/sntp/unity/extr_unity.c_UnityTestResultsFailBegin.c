
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UNITY_LINE_TYPE ;
struct TYPE_2__ {scalar_t__ isExpectingFail; int TestFile; } ;


 int UNITY_OUTPUT_CHAR (char) ;
 TYPE_1__ Unity ;
 int UnityPrint (int ) ;
 int UnityStrFail ;
 int UnityStrXFAIL ;
 int UnityTestResultsBegin (int ,int const) ;

__attribute__((used)) static void UnityTestResultsFailBegin(const UNITY_LINE_TYPE line)
{
    UnityTestResultsBegin(Unity.TestFile, line);
 if (Unity.isExpectingFail)
 {
  UnityPrint(UnityStrXFAIL);
 }
 else
 {
  UnityPrint(UnityStrFail);
 }

    UNITY_OUTPUT_CHAR(':');
}
