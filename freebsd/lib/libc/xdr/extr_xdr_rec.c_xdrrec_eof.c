
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_6__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_7__ {scalar_t__ fbtbc; scalar_t__ in_finger; scalar_t__ in_boundry; int last_frag; } ;
typedef TYPE_2__ RECSTREAM ;


 int FALSE ;
 int TRUE ;
 int set_input_fragment (TYPE_2__*) ;
 int skip_input_bytes (TYPE_2__*,scalar_t__) ;

bool_t
xdrrec_eof(XDR *xdrs)
{
 RECSTREAM *rstrm = (RECSTREAM *)(xdrs->x_private);

 while (rstrm->fbtbc > 0 || (! rstrm->last_frag)) {
  if (! skip_input_bytes(rstrm, rstrm->fbtbc))
   return (TRUE);
  rstrm->fbtbc = 0;
  if ((! rstrm->last_frag) && (! set_input_fragment(rstrm)))
   return (TRUE);
 }
 if (rstrm->in_finger == rstrm->in_boundry)
  return (TRUE);
 return (FALSE);
}
