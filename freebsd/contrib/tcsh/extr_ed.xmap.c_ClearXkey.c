
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* buf; } ;
typedef scalar_t__ KEYCMD ;
typedef TYPE_1__ CStr ;


 scalar_t__* CcAltMap ;
 scalar_t__* CcKeyMap ;
 int DeleteXkey (TYPE_1__ const*) ;
 scalar_t__ F_XKEY ;

void
ClearXkey(KEYCMD *map, const CStr *in)
{
    unsigned char c = (unsigned char) *(in->buf);
    if ((map[c] == F_XKEY) &&
 ((map == CcKeyMap && CcAltMap[c] != F_XKEY) ||
  (map == CcAltMap && CcKeyMap[c] != F_XKEY)))
 (void) DeleteXkey(in);
}
