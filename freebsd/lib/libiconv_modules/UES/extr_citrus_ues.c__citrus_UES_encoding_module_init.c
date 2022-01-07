
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int mb_cur_max; } ;
typedef TYPE_1__ _UESEncodingInfo ;


 int C99 ;
 int MATCH (int ,int) ;
 int MODE_C99 ;
 int _bcs_toupper (char const) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int

_citrus_UES_encoding_module_init(_UESEncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
 const char *p;

 p = var;
 memset((void *)ei, 0, sizeof(*ei));
 while (lenvar > 0) {
  switch (_bcs_toupper(*p)) {
  case 'C':
   MATCH(C99, ei->mode |= MODE_C99);
   break;
  }
  ++p;
  --lenvar;
 }
 ei->mb_cur_max = (ei->mode & MODE_C99) ? 10 : 12;

 return (0);
}
