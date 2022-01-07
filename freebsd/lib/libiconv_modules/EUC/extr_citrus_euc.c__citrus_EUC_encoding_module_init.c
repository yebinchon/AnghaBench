
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _EUCEncodingInfo ;


 int _citrus_EUC_parse_variable (int *,void const*,size_t) ;

__attribute__((used)) static int

_citrus_EUC_encoding_module_init(_EUCEncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{

 return (_citrus_EUC_parse_variable(ei, var, lenvar));
}
