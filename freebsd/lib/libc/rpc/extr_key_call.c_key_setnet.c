
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_long ;
struct key_netstarg {int dummy; } ;
typedef scalar_t__ keystatus ;


 scalar_t__ KEY_NET_PUT ;
 scalar_t__ KEY_SUCCESS ;
 int debug (char*) ;
 int key_call (int ,int ,struct key_netstarg*,int ,scalar_t__*) ;
 scalar_t__ xdr_key_netstarg ;
 scalar_t__ xdr_keystatus ;

int
key_setnet(struct key_netstarg *arg)
{
 keystatus status;


 if (!key_call((u_long) KEY_NET_PUT, (xdrproc_t)xdr_key_netstarg, arg,
   (xdrproc_t)xdr_keystatus, &status)){
  return (-1);
 }

 if (status != KEY_SUCCESS) {
  debug("key_setnet status is nonzero");
  return (-1);
 }
 return (1);
}
