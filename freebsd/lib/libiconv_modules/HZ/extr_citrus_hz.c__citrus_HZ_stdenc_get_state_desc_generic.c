
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chlen; scalar_t__* ch; int * inuse; } ;
typedef TYPE_1__ _HZState ;
typedef int _HZEncodingInfo ;


 int EINVAL ;
 scalar_t__ ESCAPE_CHAR ;
 int * INIT0 (int *) ;
 int _STDENC_SDGEN_INCOMPLETE_CHAR ;
 int _STDENC_SDGEN_INCOMPLETE_SHIFT ;
 int _STDENC_SDGEN_INITIAL ;
 int _STDENC_SDGEN_STABLE ;

__attribute__((used)) static __inline int
_citrus_HZ_stdenc_get_state_desc_generic(_HZEncodingInfo * __restrict ei,
    _HZState * __restrict psenc, int * __restrict rstate)
{

 if (psenc->chlen < 0 || psenc->inuse == ((void*)0))
  return (EINVAL);
 *rstate = (psenc->chlen == 0)
     ? ((psenc->inuse == INIT0(ei))
         ? _STDENC_SDGEN_INITIAL
         : _STDENC_SDGEN_STABLE)
     : ((psenc->ch[0] == ESCAPE_CHAR)
         ? _STDENC_SDGEN_INCOMPLETE_SHIFT
         : _STDENC_SDGEN_INCOMPLETE_CHAR);

 return (0);
}
