
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int int32_t ;
struct TYPE_4__ {int x_op; scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_5__ {scalar_t__ in_finger; scalar_t__ fbtbc; scalar_t__ in_boundry; scalar_t__ out_finger; scalar_t__ out_boundry; } ;
typedef TYPE_2__ RECSTREAM ;






__attribute__((used)) static int32_t *
xdrrec_inline(XDR *xdrs, u_int len)
{
 RECSTREAM *rstrm = (RECSTREAM *)xdrs->x_private;
 int32_t *buf = ((void*)0);

 switch (xdrs->x_op) {

 case 129:
  if ((rstrm->out_finger + len) <= rstrm->out_boundry) {
   buf = (int32_t *)(void *)rstrm->out_finger;
   rstrm->out_finger += len;
  }
  break;

 case 130:
  if ((len <= rstrm->fbtbc) &&
   ((rstrm->in_finger + len) <= rstrm->in_boundry)) {
   buf = (int32_t *)(void *)rstrm->in_finger;
   rstrm->fbtbc -= len;
   rstrm->in_finger += len;
  }
  break;

 case 128:
  break;
 }
 return (buf);
}
