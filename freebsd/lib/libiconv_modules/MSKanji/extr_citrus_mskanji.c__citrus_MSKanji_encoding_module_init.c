
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ _MSKanjiEncodingInfo ;


 int JIS2004 ;
 int MATCH (int ,int) ;
 int MODE_JIS2004 ;
 int _bcs_toupper (char const) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int

_citrus_MSKanji_encoding_module_init(_MSKanjiEncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
 const char *p;

 p = var;
 memset((void *)ei, 0, sizeof(*ei));
 while (lenvar > 0) {
  switch (_bcs_toupper(*p)) {
  case 'J':
   MATCH(JIS2004, ei->mode |= MODE_JIS2004);
   break;
  }
  ++p;
  --lenvar;
 }

 return (0);
}
