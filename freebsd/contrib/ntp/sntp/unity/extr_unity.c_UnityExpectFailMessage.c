
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UNITY_LINE_TYPE ;
struct TYPE_2__ {int isExpectingFail; char const* XFAILMessage; } ;


 TYPE_1__ Unity ;

void UnityExpectFailMessage(const char* msg, const UNITY_LINE_TYPE line ){

 Unity.isExpectingFail = 1;
   if (msg != ((void*)0))
    {
  Unity.XFAILMessage = msg;
    }
}
