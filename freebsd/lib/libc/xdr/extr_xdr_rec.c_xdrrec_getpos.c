
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int ;
typedef int off_t ;
struct TYPE_4__ {int x_op; scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_5__ {int out_finger; int out_base; int in_boundry; int in_finger; scalar_t__ tcp_handle; } ;
typedef TYPE_2__ RECSTREAM ;




 int lseek (int,int,int) ;

__attribute__((used)) static u_int
xdrrec_getpos(XDR *xdrs)
{
 RECSTREAM *rstrm = (RECSTREAM *)xdrs->x_private;
 off_t pos;

 pos = lseek((int)(u_long)rstrm->tcp_handle, (off_t)0, 1);
 if (pos == -1)
  pos = 0;
 switch (xdrs->x_op) {

 case 128:
  pos += rstrm->out_finger - rstrm->out_base;
  break;

 case 129:
  pos -= rstrm->in_boundry - rstrm->in_finger;
  break;

 default:
  pos = (off_t) -1;
  break;
 }
 return ((u_int) pos);
}
