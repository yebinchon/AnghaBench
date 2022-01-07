
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HMODULE ;


 void* DebugActiveProcessStop ;
 void* DebugSetProcessKillOnExit ;
 void* GetProcAddress (int *,char*) ;
 int * LoadLibrary (char*) ;

__attribute__((used)) static int
has_detach_ability (void)
{
  static HMODULE kernel32 = ((void*)0);

  if (!kernel32)
    kernel32 = LoadLibrary ("kernel32.dll");
  if (kernel32)
    {
      if (!DebugSetProcessKillOnExit)
 DebugSetProcessKillOnExit = GetProcAddress (kernel32,
       "DebugSetProcessKillOnExit");
      if (!DebugActiveProcessStop)
 DebugActiveProcessStop = GetProcAddress (kernel32,
       "DebugActiveProcessStop");
      if (DebugSetProcessKillOnExit && DebugActiveProcessStop)
 return 1;
    }
  return 0;
}
