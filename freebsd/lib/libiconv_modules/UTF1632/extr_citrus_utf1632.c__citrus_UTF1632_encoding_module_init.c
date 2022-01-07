
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cur_max; int mode; scalar_t__ preffered_endian; } ;
typedef TYPE_1__ _UTF1632EncodingInfo ;


 scalar_t__ _ENDIAN_BIG ;
 scalar_t__ _ENDIAN_UNKNOWN ;
 int _MODE_UTF32 ;
 int memset (void*,int ,int) ;
 int parse_variable (TYPE_1__*,void const*,size_t) ;

__attribute__((used)) static int

_citrus_UTF1632_encoding_module_init(_UTF1632EncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{

 memset((void *)ei, 0, sizeof(*ei));

 parse_variable(ei, var, lenvar);

 ei->cur_max = ((ei->mode&_MODE_UTF32) == 0) ? 6 : 8;



 if (ei->preffered_endian == _ENDIAN_UNKNOWN) {
  ei->preffered_endian = _ENDIAN_BIG;
 }

 return (0);
}
