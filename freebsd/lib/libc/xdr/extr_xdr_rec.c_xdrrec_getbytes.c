
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int bool_t ;
struct TYPE_6__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_7__ {scalar_t__ fbtbc; scalar_t__ last_frag; } ;
typedef TYPE_2__ RECSTREAM ;


 int FALSE ;
 int TRUE ;
 int get_input_bytes (TYPE_2__*,char*,int) ;
 int set_input_fragment (TYPE_2__*) ;

__attribute__((used)) static bool_t
xdrrec_getbytes(XDR *xdrs, char *addr, u_int len)
{
 RECSTREAM *rstrm = (RECSTREAM *)(xdrs->x_private);
 int current;

 while (len > 0) {
  current = (int)rstrm->fbtbc;
  if (current == 0) {
   if (rstrm->last_frag)
    return (FALSE);
   if (! set_input_fragment(rstrm))
    return (FALSE);
   continue;
  }
  current = (len < current) ? len : current;
  if (! get_input_bytes(rstrm, addr, current))
   return (FALSE);
  addr += current;
  rstrm->fbtbc -= current;
  len -= current;
 }
 return (TRUE);
}
