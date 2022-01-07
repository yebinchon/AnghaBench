
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int excludes; } ;
typedef TYPE_1__ _BIG5EncodingInfo ;


 int TAILQ_INIT (int *) ;
 char* _bcs_skip_ws_len (char const*,size_t*) ;
 int _citrus_BIG5_encoding_module_uninit (TYPE_1__*) ;
 int _citrus_BIG5_fill_rowcol (TYPE_1__*,char*,int,int) ;
 int _citrus_prop_parse_variable (int ,void*,char const*,size_t) ;
 int memset (void*,int ,int) ;
 int root_hints ;

__attribute__((used)) static int

_citrus_BIG5_encoding_module_init(_BIG5EncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
 const char *s;
 int err;

 memset((void *)ei, 0, sizeof(*ei));
 TAILQ_INIT(&ei->excludes);

 if (lenvar > 0 && var != ((void*)0)) {
  s = _bcs_skip_ws_len((const char *)var, &lenvar);
  if (lenvar > 0 && *s != '\0') {
   err = _citrus_prop_parse_variable(
       root_hints, (void *)ei, s, lenvar);
   if (err == 0)
    return (0);

   _citrus_BIG5_encoding_module_uninit(ei);
   memset((void *)ei, 0, sizeof(*ei));
   TAILQ_INIT(&ei->excludes);
  }
 }


 _citrus_BIG5_fill_rowcol(ei, "row", 0xA1, 0xFE);
 _citrus_BIG5_fill_rowcol(ei, "col", 0x40, 0x7E);
 _citrus_BIG5_fill_rowcol(ei, "col", 0xA1, 0xFE);

 return (0);
}
