
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int preffered_endian; int mode; } ;
typedef TYPE_1__ _UTF1632EncodingInfo ;


 int MATCH (int ,int) ;
 int _ENDIAN_BIG ;
 int _ENDIAN_INTERNAL ;
 int _ENDIAN_LITTLE ;
 int _ENDIAN_SWAPPED ;
 int _MODE_FORCE_ENDIAN ;
 int _MODE_UTF32 ;
 int big ;
 int force ;
 int internal ;
 int little ;
 int swapped ;
 int utf32 ;

__attribute__((used)) static void
parse_variable(_UTF1632EncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
 const char *p;

 p = var;
 while (lenvar > 0) {
  switch (*p) {
  case 'B':
  case 'b':
   MATCH(big, ei->preffered_endian = _ENDIAN_BIG);
   break;
  case 'L':
  case 'l':
   MATCH(little, ei->preffered_endian = _ENDIAN_LITTLE);
   break;
  case 'i':
  case 'I':
   MATCH(internal, ei->preffered_endian = _ENDIAN_INTERNAL);
   break;
  case 's':
  case 'S':
   MATCH(swapped, ei->preffered_endian = _ENDIAN_SWAPPED);
   break;
  case 'F':
  case 'f':
   MATCH(force, ei->mode |= _MODE_FORCE_ENDIAN);
   break;
  case 'U':
  case 'u':
   MATCH(utf32, ei->mode |= _MODE_UTF32);
   break;
  }
  p++;
  lenvar--;
 }
}
