
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 scalar_t__ AltKeyMap ;
 int CcAltMap ;
 int CcKeyMap ;
 int CurrentKeyMap ;

__attribute__((used)) static void
c_alternativ_key_map(int state)
{
    switch (state) {
    case 0:
 CurrentKeyMap = CcKeyMap;
 break;
    case 1:
 CurrentKeyMap = CcAltMap;
 break;
    default:
 return;
    }

    AltKeyMap = (Char) state;
}
