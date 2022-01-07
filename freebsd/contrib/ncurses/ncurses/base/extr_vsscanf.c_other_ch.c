
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OtherType ;


 int oLong ;
 int oShort ;
 int oUnknown ;

__attribute__((used)) static OtherType
other_ch(int ch)
{
    OtherType result = oUnknown;
    switch (ch) {
    case 'h':
 result = oShort;
 break;
    case 'l':
 result = oLong;
 break;
    }
    return result;
}
