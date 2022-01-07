
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef size_t u_int ;
typedef int bool_t ;
struct TYPE_5__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_6__ {scalar_t__ out_boundry; scalar_t__ out_finger; int frag_sent; } ;
typedef TYPE_2__ RECSTREAM ;


 int FALSE ;
 int TRUE ;
 int flush_out (TYPE_2__*,int ) ;
 int memmove (scalar_t__,char const*,size_t) ;

__attribute__((used)) static bool_t
xdrrec_putbytes(XDR *xdrs, const char *addr, u_int len)
{
 RECSTREAM *rstrm = (RECSTREAM *)(xdrs->x_private);
 size_t current;

 while (len > 0) {
  current = (size_t)((u_long)rstrm->out_boundry -
      (u_long)rstrm->out_finger);
  current = (len < current) ? len : current;
  memmove(rstrm->out_finger, addr, current);
  rstrm->out_finger += current;
  addr += current;
  len -= current;
  if (rstrm->out_finger == rstrm->out_boundry) {
   rstrm->frag_sent = TRUE;
   if (! flush_out(rstrm, FALSE))
    return (FALSE);
  }
 }
 return (TRUE);
}
