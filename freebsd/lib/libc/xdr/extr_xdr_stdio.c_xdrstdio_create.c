
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum xdr_op { ____Placeholder_xdr_op } xdr_op ;
struct TYPE_3__ {int x_op; scalar_t__ x_base; scalar_t__ x_handy; int * x_private; int * x_ops; } ;
typedef TYPE_1__ XDR ;
typedef int FILE ;


 int xdrstdio_ops ;

void
xdrstdio_create(XDR *xdrs, FILE *file, enum xdr_op op)
{

 xdrs->x_op = op;
 xdrs->x_ops = &xdrstdio_ops;
 xdrs->x_private = file;
 xdrs->x_handy = 0;
 xdrs->x_base = 0;
}
