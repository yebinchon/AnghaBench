
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ WDM_MAJOR ;
 scalar_t__ WDM_MINOR_WINXP ;

__attribute__((used)) static uint8_t
IoIsWdmVersionAvailable(uint8_t major, uint8_t minor)
{
 if (major == WDM_MAJOR && minor == WDM_MINOR_WINXP)
  return (TRUE);
 return (FALSE);
}
