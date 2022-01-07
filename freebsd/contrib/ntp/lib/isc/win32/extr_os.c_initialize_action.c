
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetSystemInfo (int *) ;
 int SystemInfo ;
 scalar_t__ TRUE ;
 scalar_t__ bInit ;

__attribute__((used)) static void
initialize_action(void) {
 if (bInit)
  return;

 GetSystemInfo(&SystemInfo);
 bInit = TRUE;
}
