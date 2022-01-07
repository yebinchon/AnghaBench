
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* xdrproc_t ) (TYPE_1__*,void*) ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int XDR_FREE ;
 int stub1 (TYPE_1__*,void*) ;

void
xdr_free(xdrproc_t proc, void *objp)
{
 XDR x;

 x.x_op = XDR_FREE;
 (*proc)(&x, objp);
}
