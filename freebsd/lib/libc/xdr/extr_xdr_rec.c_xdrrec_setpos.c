
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int bool_t ;
struct TYPE_5__ {int x_op; scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_6__ {char* out_finger; char* out_boundry; char* in_finger; int fbtbc; char* in_boundry; char* in_base; scalar_t__ frag_header; } ;
typedef TYPE_2__ RECSTREAM ;


 int FALSE ;
 int TRUE ;



 int xdrrec_getpos (TYPE_1__*) ;

__attribute__((used)) static bool_t
xdrrec_setpos(XDR *xdrs, u_int pos)
{
 RECSTREAM *rstrm = (RECSTREAM *)xdrs->x_private;
 u_int currpos = xdrrec_getpos(xdrs);
 int delta = currpos - pos;
 char *newpos;

 if ((int)currpos != -1)
  switch (xdrs->x_op) {

  case 129:
   newpos = rstrm->out_finger - delta;
   if ((newpos > (char *)(void *)(rstrm->frag_header)) &&
    (newpos < rstrm->out_boundry)) {
    rstrm->out_finger = newpos;
    return (TRUE);
   }
   break;

  case 130:
   newpos = rstrm->in_finger - delta;
   if ((delta < (int)(rstrm->fbtbc)) &&
    (newpos <= rstrm->in_boundry) &&
    (newpos >= rstrm->in_base)) {
    rstrm->in_finger = newpos;
    rstrm->fbtbc -= delta;
    return (TRUE);
   }
   break;

  case 128:
   break;
  }
 return (FALSE);
}
