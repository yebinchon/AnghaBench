
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_4__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_5__ {int recvsize; int in_maxrec; int nonblock; } ;
typedef TYPE_2__ RECSTREAM ;


 int TRUE ;

bool_t
__xdrrec_setnonblock(XDR *xdrs, int maxrec)
{
 RECSTREAM *rstrm = (RECSTREAM *)(xdrs->x_private);

 rstrm->nonblock = TRUE;
 if (maxrec == 0)
  maxrec = rstrm->recvsize;
 rstrm->in_maxrec = maxrec;
 return TRUE;
}
