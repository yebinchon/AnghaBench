
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _HZEncodingInfo ;


 int E0SET (int *) ;
 int E1SET (int *) ;
 int TAILQ_INIT (int ) ;
 int _citrus_HZ_encoding_module_uninit (int *) ;
 int _citrus_prop_parse_variable (int ,void*,void const*,size_t) ;
 int memset (int *,int ,int) ;
 int root_hints ;

__attribute__((used)) static int
_citrus_HZ_encoding_module_init(_HZEncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
 int errnum;

 memset(ei, 0, sizeof(*ei));
 TAILQ_INIT(E0SET(ei));
 TAILQ_INIT(E1SET(ei));
 errnum = _citrus_prop_parse_variable(
     root_hints, (void *)ei, var, lenvar);
 if (errnum != 0)
  _citrus_HZ_encoding_module_uninit(ei);
 return (errnum);
}
