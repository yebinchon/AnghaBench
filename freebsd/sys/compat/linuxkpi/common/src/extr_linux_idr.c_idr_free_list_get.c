
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {struct idr_layer** ary; } ;
struct idr {struct idr_layer* free; } ;



__attribute__((used)) static struct idr_layer *
idr_free_list_get(struct idr *idp)
{
 struct idr_layer *il;

 if ((il = idp->free) != ((void*)0)) {
  idp->free = il->ary[0];
  il->ary[0] = ((void*)0);
 }
 return (il);
}
