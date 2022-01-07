
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_long ;
typedef int des_block ;
struct TYPE_4__ {int deskey; } ;
struct TYPE_5__ {scalar_t__ status; TYPE_1__ cryptkeyres_u; } ;
typedef TYPE_2__ cryptkeyres ;


 scalar_t__ KEY_GET_CONV ;
 scalar_t__ KEY_SUCCESS ;
 int debug (char*) ;
 int key_call (int ,int ,char*,int ,TYPE_2__*) ;
 scalar_t__ xdr_cryptkeyres ;
 scalar_t__ xdr_keybuf ;

int
key_get_conv(char *pkey, des_block *deskey)
{
 cryptkeyres res;

 if (!key_call((u_long) KEY_GET_CONV, (xdrproc_t)xdr_keybuf, pkey,
   (xdrproc_t)xdr_cryptkeyres, &res)) {
  return (-1);
 }
 if (res.status != KEY_SUCCESS) {
  debug("get_conv status is nonzero");
  return (-1);
 }
 *deskey = res.cryptkeyres_u.deskey;
 return (0);
}
