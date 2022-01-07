
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ int32_t ;
typedef int bool_t ;
struct TYPE_5__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_6__ {scalar_t__ out_finger; scalar_t__ out_boundry; int frag_sent; } ;
typedef TYPE_2__ RECSTREAM ;


 int FALSE ;
 int TRUE ;
 int flush_out (TYPE_2__*,int ) ;
 int htonl (int ) ;

__attribute__((used)) static bool_t
xdrrec_putlong(XDR *xdrs, const long *lp)
{
 RECSTREAM *rstrm = (RECSTREAM *)(xdrs->x_private);
 int32_t *dest_lp = ((int32_t *)(void *)(rstrm->out_finger));

 if ((rstrm->out_finger += sizeof(int32_t)) > rstrm->out_boundry) {




  rstrm->out_finger -= sizeof(int32_t);
  rstrm->frag_sent = TRUE;
  if (! flush_out(rstrm, FALSE))
   return (FALSE);
  dest_lp = ((int32_t *)(void *)(rstrm->out_finger));
  rstrm->out_finger += sizeof(int32_t);
 }
 *dest_lp = (int32_t)htonl((u_int32_t)(*lp));
 return (TRUE);
}
