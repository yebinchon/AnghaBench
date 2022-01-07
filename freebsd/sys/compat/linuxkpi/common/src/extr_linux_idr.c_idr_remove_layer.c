
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {struct idr_layer** ary; } ;


 int IDR_SIZE ;
 int M_IDR ;
 int free (struct idr_layer*,int ) ;

__attribute__((used)) static void
idr_remove_layer(struct idr_layer *il, int layer)
{
 int i;

 if (il == ((void*)0))
  return;
 if (layer == 0) {
  free(il, M_IDR);
  return;
 }
 for (i = 0; i < IDR_SIZE; i++)
  if (il->ary[i])
   idr_remove_layer(il->ary[i], layer - 1);
}
