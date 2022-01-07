
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UNITY_LINE_TYPE ;
struct TYPE_2__ {int TestFile; } ;


 int UNITY_FAIL_AND_BAIL ;
 int UNITY_OUTPUT_CHAR (char) ;
 int UNITY_SKIP_EXECUTION ;
 TYPE_1__ Unity ;
 int UnityPrint (char const*) ;
 int UnityPrintFail () ;
 int UnityTestResultsBegin (int ,int const) ;

void UnityFail(const char* msg, const UNITY_LINE_TYPE line)
{
    UNITY_SKIP_EXECUTION;

    UnityTestResultsBegin(Unity.TestFile, line);
    UnityPrintFail();
    if (msg != ((void*)0))
    {
      UNITY_OUTPUT_CHAR(':');
      if (msg[0] != ' ')
      {
        UNITY_OUTPUT_CHAR(' ');
      }
      UnityPrint(msg);
    }
    UNITY_FAIL_AND_BAIL;
}
