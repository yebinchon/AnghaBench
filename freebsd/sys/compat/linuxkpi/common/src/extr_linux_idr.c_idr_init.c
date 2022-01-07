
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int lock; } ;


 int MTX_DEF ;
 int bzero (struct idr*,int) ;
 int mtx_init (int *,char*,int *,int ) ;

void
idr_init(struct idr *idr)
{
 bzero(idr, sizeof(*idr));
 mtx_init(&idr->lock, "idr", ((void*)0), MTX_DEF);
}
