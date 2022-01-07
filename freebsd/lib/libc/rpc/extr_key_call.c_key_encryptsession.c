
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_long ;
typedef int des_block ;
struct TYPE_6__ {int deskey; } ;
struct TYPE_7__ {scalar_t__ status; TYPE_1__ cryptkeyres_u; } ;
typedef TYPE_2__ cryptkeyres ;
struct TYPE_8__ {char* remotename; int deskey; } ;
typedef TYPE_3__ cryptkeyarg ;


 scalar_t__ KEY_ENCRYPT ;
 scalar_t__ KEY_SUCCESS ;
 int debug (char*) ;
 int key_call (int ,int ,TYPE_3__*,int ,TYPE_2__*) ;
 scalar_t__ xdr_cryptkeyarg ;
 scalar_t__ xdr_cryptkeyres ;

int
key_encryptsession(const char *remotename, des_block *deskey)
{
 cryptkeyarg arg;
 cryptkeyres res;

 arg.remotename = (char *) remotename;
 arg.deskey = *deskey;
 if (!key_call((u_long)KEY_ENCRYPT, (xdrproc_t)xdr_cryptkeyarg, &arg,
   (xdrproc_t)xdr_cryptkeyres, &res)) {
  return (-1);
 }
 if (res.status != KEY_SUCCESS) {
  debug("encrypt status is nonzero");
  return (-1);
 }
 *deskey = res.cryptkeyres_u.deskey;
 return (0);
}
