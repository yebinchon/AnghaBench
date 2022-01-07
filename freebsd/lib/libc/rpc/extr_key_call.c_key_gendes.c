
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_long ;
typedef int des_block ;


 scalar_t__ KEY_GEN ;
 int key_call (int ,int ,int *,int ,int *) ;
 scalar_t__ xdr_des_block ;
 scalar_t__ xdr_void ;

int
key_gendes(des_block *key)
{
 if (!key_call((u_long)KEY_GEN, (xdrproc_t)xdr_void, ((void*)0),
   (xdrproc_t)xdr_des_block, key)) {
  return (-1);
 }
 return (0);
}
