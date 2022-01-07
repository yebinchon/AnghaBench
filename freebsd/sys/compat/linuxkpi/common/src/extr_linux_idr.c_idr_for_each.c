
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {scalar_t__ layers; int top; } ;


 int idr_for_each_layer (int ,int ,scalar_t__,int (*) (int,void*,void*),void*) ;

int
idr_for_each(struct idr *idp, int (*f)(int id, void *p, void *data), void *data)
{
 return (idr_for_each_layer(idp->top, 0, idp->layers - 1, f, data));
}
