
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mb_cur_max; } ;
typedef TYPE_1__ _GBK2KEncodingInfo ;


 int MATCH (char*,int) ;
 int _bcs_tolower (char const) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int

_citrus_GBK2K_encoding_module_init(_GBK2KEncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
 const char *p;

 p = var;
 memset((void *)ei, 0, sizeof(*ei));
 ei->mb_cur_max = 4;
 while (lenvar > 0) {
  switch (_bcs_tolower(*p)) {
  case '2':
   MATCH("2byte", ei->mb_cur_max = 2);
   break;
  }
  p++;
  lenvar--;
 }

 return (0);
}
