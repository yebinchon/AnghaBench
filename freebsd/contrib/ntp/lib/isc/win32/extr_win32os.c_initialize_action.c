
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwOSVersionInfoSize; } ;
typedef int OSVERSIONINFOEX ;
typedef int OSVERSIONINFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ GetVersionEx (int *) ;
 scalar_t__ TRUE ;
 scalar_t__ bInit ;
 TYPE_1__ osVer ;

__attribute__((used)) static void
initialize_action(void) {
 BOOL bSuccess;

 if (bInit)
  return;




 osVer.dwOSVersionInfoSize = sizeof(OSVERSIONINFOEX);
 bSuccess = GetVersionEx((OSVERSIONINFO *) &osVer);






 if(!bSuccess) {
  osVer.dwOSVersionInfoSize = sizeof(OSVERSIONINFO);
  bSuccess = GetVersionEx((OSVERSIONINFO *) &osVer);
 }
 bInit = TRUE;
}
