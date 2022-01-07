
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
struct TYPE_6__ {int sendsize; int recvsize; struct TYPE_6__* in_base; struct TYPE_6__* out_base; } ;
typedef TYPE_2__ RECSTREAM ;


 int mem_free (TYPE_2__*,int) ;

__attribute__((used)) static void
xdrrec_destroy(XDR *xdrs)
{
 RECSTREAM *rstrm = (RECSTREAM *)xdrs->x_private;

 mem_free(rstrm->out_base, rstrm->sendsize);
 mem_free(rstrm->in_base, rstrm->recvsize);
 mem_free(rstrm, sizeof(RECSTREAM));
}
