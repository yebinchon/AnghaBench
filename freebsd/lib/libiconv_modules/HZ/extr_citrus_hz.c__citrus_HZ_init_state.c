
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inuse; scalar_t__ chlen; } ;
typedef TYPE_1__ _HZState ;
typedef int _HZEncodingInfo ;


 int INIT0 (int *) ;

__attribute__((used)) static __inline void
_citrus_HZ_init_state(_HZEncodingInfo * __restrict ei,
    _HZState * __restrict psenc)
{

 psenc->chlen = 0;
 psenc->inuse = INIT0(ei);
}
