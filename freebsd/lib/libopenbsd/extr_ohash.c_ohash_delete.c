
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int (* free ) (int *,int ) ;} ;
struct ohash {int * t; TYPE_1__ info; } ;


 int stub1 (int *,int ) ;

void
ohash_delete(struct ohash *h)
{
 (h->info.free)(h->t, h->info.data);

 h->t = ((void*)0);

}
