
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OtherType ;
typedef int ChunkType ;


 int cAssigned ;
 int cChar ;
 int cDouble ;
 int cError ;
 int cFloat ;
 int cInt ;
 int cLong ;
 int cPointer ;
 int cShort ;
 int cString ;
 int cUnknown ;




__attribute__((used)) static ChunkType
final_ch(int ch, OtherType other)
{
    ChunkType result = cUnknown;

    switch (ch) {
    case 'c':
 if (other == 128)
     result = cChar;
 else
     result = cError;
 break;
    case 'd':
    case 'i':
    case 'X':
    case 'x':
 switch (other) {
 case 128:
     result = cInt;
     break;
 case 129:
     result = cShort;
     break;
 case 130:
     result = cLong;
     break;
 }
 break;
    case 'E':
    case 'e':
    case 'f':
    case 'g':
 switch (other) {
 case 128:
     result = cFloat;
     break;
 case 129:
     result = cError;
     break;
 case 130:
     result = cDouble;
     break;
 }
 break;
    case 'n':
 if (other == 128)
     result = cAssigned;
 else
     result = cError;
 break;
    case 'p':
 if (other == 128)
     result = cPointer;
 else
     result = cError;
 break;
    case 's':
 if (other == 128)
     result = cString;
 else
     result = cError;
 break;
    }
    return result;
}
